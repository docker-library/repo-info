## `buildpack-deps:stable-scm`

```console
$ docker pull buildpack-deps@sha256:95146690705862ac9adebf695195a9674a32b36586a23eec2770d2ea0041e3b4
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

### `buildpack-deps:stable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9f939e2a54eea27a03a3c4a0eff601d509a03d207a427d8711a2577c0beb559a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142744029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b928f1914b67f5194c69e62b0e277c3034b0124f035987b4c3fc910d3c8d2dd9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eb277e699714a9994dfb49d5c26e4532402c0b293de063733b77992ca41c78de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709da2b4f40b621cffaf76f946eef77d7134ae43c8d5978ab1367f6a4e974812`

```dockerfile
```

-	Layers:
	-	`sha256:c5aa5106b6a9b6ec98262b414eccc55435c2a83d000836df44df5a008016bff6`  
		Last Modified: Tue, 14 Jul 2026 02:30:14 GMT  
		Size: 7.8 MB (7768613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35b882c09780660eb5602b5d68b627611f316b3a7d1230a010d7ddfc9f3966ca`  
		Last Modified: Tue, 14 Jul 2026 02:30:13 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7f39dc018280af3ace80370134a4b3bf0252b8ef8b60ccb2ee04e00b16f2b588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137184324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21401562efb2718fb24af4c883c14ee5088bcb090e9e8f18ab6ad8393c57c7b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ed54f4ae9af1a04d5ba500e0193d535cc84aa6eff10adc82ec178c9d00a315`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 24.4 MB (24364855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3267125ae4d03ff47c8d8fa5f16d6767ca2662245d8a1f49de97e62376e59244`  
		Last Modified: Tue, 14 Jul 2026 03:58:19 GMT  
		Size: 65.3 MB (65329503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9e2e2fea33f82fa11e718106b05222a63e69f6146f5aceab3d8ec84314baa026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7aa8be2a91b395a048110b0b74943c65ec5fa0ddd09c4cf3a93a9e44640db7`

```dockerfile
```

-	Layers:
	-	`sha256:ec717c910567d511f624da616e96cf9f194bb6755fd8cae05385f04a91e6b1ec`  
		Last Modified: Tue, 14 Jul 2026 03:58:17 GMT  
		Size: 7.8 MB (7769651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b7f7455da57426169cc0721c8b88f052d023b6414ab9c8a2aac70c1b22d097`  
		Last Modified: Tue, 14 Jul 2026 03:58:17 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cc4308c6eac39f3b00624e83926216aa03e7c55c6f1bd35c41d78499fec98bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132127026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4448da601d1e404857e4529d8cf9abf5a0515842b78983912ac5fdd2468e00`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:847b21004c354c8a82f1e64b061add3c7998d83dfedf44e7b5f3cf76541e114e`  
		Last Modified: Tue, 14 Jul 2026 04:15:41 GMT  
		Size: 62.7 MB (62746773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4882f3821a97a604fcd738a4a3214ae40befaa435c7185e781fcd972dde752b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f549932df8adc74ae320487f9c0e505ac36ba8340a1e4568427df6704383f9`

```dockerfile
```

-	Layers:
	-	`sha256:f802ad3eabbf5ddabdd6334c94b7733f1aac038eaeedcc22782b086183873e55`  
		Last Modified: Tue, 14 Jul 2026 04:15:40 GMT  
		Size: 7.8 MB (7769120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:398b80a0a15cfeec6b0087af1406174c603463886ec7ce5cf1cbf0e6fbe70379`  
		Last Modified: Tue, 14 Jul 2026 04:15:40 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2c6f0d076e6d2e467fef074416580aeefb585e1688679ed189a2ac8051dc24d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142296658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14fd8b1cfe748f0f3df2ffb84ad815e4f8c038c35adeabf0f69646a7122f99a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6f69a04fe2789083fdfae493d6e029b0278da852b8b1b20c857500f4ad7d2305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8d974aa8a08a618c1b7cfc42bf779873aff7c2dafb61ef11b731821531af66`

```dockerfile
```

-	Layers:
	-	`sha256:fc75e943038a743756dd513247fec979967aa833875ec15d24df3130b11b4b53`  
		Last Modified: Tue, 14 Jul 2026 02:37:09 GMT  
		Size: 7.8 MB (7775651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fa5b3861d62565467280042a8d38212a9d95400f904bae08d96645629bfb873`  
		Last Modified: Tue, 14 Jul 2026 02:37:09 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4f5d76c0c1bbafffc779fe92f16225b359122192f4e385b52eac23ec2aa41752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147461080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f9a11cb2bca9bbdf664e7bda51db227cec649a63629ec4b50e74da79e058a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062c05844db57ef4065a60eaa0d1715c922df19034daf883e4dadec97adf52b`  
		Last Modified: Tue, 14 Jul 2026 01:47:23 GMT  
		Size: 26.8 MB (26800462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1cc5ea947cd62ae2ce24a372d1d425ed7b2f973139c39ecafd214ac3b75fcb`  
		Last Modified: Tue, 14 Jul 2026 02:38:41 GMT  
		Size: 69.8 MB (69829128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ec171372e1c25e3c6daed7a61e381fb23f091ba49741c4b26504e59b8985e5f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5bf109442df5675eae8fb571562ef8756463cd6b64be411c0e14f3b7984b3b`

```dockerfile
```

-	Layers:
	-	`sha256:e33091885e6485eeffde3b3e2ec1692977b8d0b0b2b89b50432e9f7f7f509f6d`  
		Last Modified: Tue, 14 Jul 2026 02:38:40 GMT  
		Size: 7.8 MB (7764747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff0004163e7403d55bc19868c07396b013b14f84ce4543f87d8b8e2e048a524f`  
		Last Modified: Tue, 14 Jul 2026 02:38:39 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:371a72cf796852dc1bc6fe38553d728c041c5c1eb76495c543c35d52f0c37a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153202828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda67813f6672d1bdfad2a33c365a1f3b35f322246c996c63302d4d1059a1000`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:117819f72f2d12a1d6acd00b631a1142d336e66178aada2cc7d9c36171f604a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552db77c1fd21879202cee2e1d7d2eb4a5563faf0f33d963789836596e74fd39`

```dockerfile
```

-	Layers:
	-	`sha256:76d52c1bc6d1870571ef3d04bc83d06a4725625f6ecb8123a72588e5f536dcd6`  
		Last Modified: Wed, 24 Jun 2026 09:11:48 GMT  
		Size: 7.8 MB (7775648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800ad7b8a168d5c3076753faf82b7304bc3ea7b9fec635a7c061525a38169e20`  
		Last Modified: Wed, 24 Jun 2026 09:11:48 GMT  
		Size: 7.6 KB (7613 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8be6f113709d1da97d919973b9e6f16fdb6edb704d4817a56a495f981fb913cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139444859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c4dcf0a9793eee62c3e43c82ebb651f781ceac205bb016803b2fe2d07476df`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:76632c677c9de7d35c8735d90617930fa3c0c225c5b615fe2970eb9373a3619d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7766012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0c3371ebb045cfad0a733942fae7477ae1ee24b9606a9d43b7e4e3b3350a39`

```dockerfile
```

-	Layers:
	-	`sha256:de11d58a5bd3efd426ae84bb0960b31005e7c9ccca8ffbf99129a138a8210060`  
		Last Modified: Mon, 29 Jun 2026 10:54:33 GMT  
		Size: 7.8 MB (7758397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5ee16e4c759d5637882d478a8d5e93dd448bbb66a5c42b972904ce3a5098ee`  
		Last Modified: Mon, 29 Jun 2026 10:54:31 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f50d34652b65af28aa70d9cd1b5dc2a16a05f6a23bb8a5f165a33c9828290d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144820150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92e6e89f96e315001f0f44ae398c5745b0ca484bc28066b503d8bd3782c8455`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63c11684f0eef7c3f7f0fbefbbe513218c6eb99f11d347384595ee632687aaa`  
		Last Modified: Tue, 14 Jul 2026 03:08:18 GMT  
		Size: 26.8 MB (26804611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c8feb8bfdc0a1416f379cc1a217d8affe7b45e12197ca17393856ccbc9910b`  
		Last Modified: Tue, 14 Jul 2026 04:47:29 GMT  
		Size: 68.6 MB (68633831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c4768d906facaf9908ebe68a911976d148957020058547e3553b6d05d7bd2f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023a08212f17b6f19c4aed3a1183e90f4b43f735f743efdf89562f15e92fc93a`

```dockerfile
```

-	Layers:
	-	`sha256:ce04d9054f7ba65693798ecbbf02f70dc393994c619913f7f7fab0a1afbd3dc4`  
		Last Modified: Tue, 14 Jul 2026 04:47:28 GMT  
		Size: 7.8 MB (7769526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ce9b42253bbc84ccd2fb31d58559b449d2528da49a1a2edfc26fc9b3e3416cc`  
		Last Modified: Tue, 14 Jul 2026 04:47:27 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json
