## `buildpack-deps:trixie-scm`

```console
$ docker pull buildpack-deps@sha256:6b19d269fa31e9f0a5a08364f9ca1cdd91e92b876e9ff31d1c3b4ef99cc87c00
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

### `buildpack-deps:trixie-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8f6dd7e896309988842cae236958aa8b132a68a8277a1fcb250a3644d54947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142748950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d7638f1413b747c618f7f0eb2a91d0e055dde7e5ae157736c9f7514a1643da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:936e682989ca8cf8929bb9e3cf5bb91896da539f8bef2acad36bf8735f25003c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3e207e0bb4d8122692bf0e12e768b7eafe6ad6c11dcdde38a21581e6d6f67e`

```dockerfile
```

-	Layers:
	-	`sha256:4fab45414e540aec1379947ffd08962fab0b3edf6b5d41567673347becc6073c`  
		Last Modified: Wed, 05 Aug 2026 01:33:39 GMT  
		Size: 7.8 MB (7768645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a4539a764e41f5bd169d7641b446aab7fe9026e958d6bc919887e6d191c139`  
		Last Modified: Wed, 05 Aug 2026 01:33:38 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; arm variant v5

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; arm variant v7

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; arm64 variant v8

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; 386

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e38abb4f4fe60c338e0ae240e8715bb9af5676320e9e0b47275e1bce3f71de95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153199178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:328984d8873a9f448b16394428f09edc89d8796ee4d5fc931d1ed8347966c5ab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:b551dcb76f19ba607c6efcd591fb5d3e48d58c66dc467f180227abb4f55f0844`  
		Last Modified: Tue, 14 Jul 2026 12:16:23 GMT  
		Size: 73.0 MB (73044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1a893dd4e51f67b063a9bc7cc89d2a487c448b6c37bfef941a2d4cd2a25dbb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84720a3bc8c29301252788104fb00c2383abd7edc7f6d30dd754725b55639c1a`

```dockerfile
```

-	Layers:
	-	`sha256:6227a9767a97472b5d86d79664d17f897fc0b20e828eacac57fe1d6a7e1956ae`  
		Last Modified: Tue, 14 Jul 2026 12:16:21 GMT  
		Size: 7.8 MB (7775738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3df66a7d29b87d2a1f99e5d806c8d594bbfce6d6e0bf7fcffd31c6a811f57aff`  
		Last Modified: Tue, 14 Jul 2026 12:16:21 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c43256887b4f0483125335ded0d7ba8324cee80de53c0a5d9b195dd39234be71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139449096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bc25c11d1cf3ac34566d33475c9396f813add7a7982f47f8e42e426a13e858`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:81442ecb065fc9c5f293fca1a82fcd48a01ca1d9549e5862c62bee3c2c85b85e`  
		Last Modified: Thu, 16 Jul 2026 22:55:38 GMT  
		Size: 66.7 MB (66683012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4722848ea17638bdb3c09fea17b219cb68628efe8cc1466dec78e1b99b3942b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7766066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950b354facd0c34524ba0bfb06f3490c6f0fc636978bcac7d3687ca69f35c93`

```dockerfile
```

-	Layers:
	-	`sha256:741a20307c372f5cd2697b42e07f2e2fb154a98af7a4f026d28804c0314194c8`  
		Last Modified: Thu, 16 Jul 2026 22:55:29 GMT  
		Size: 7.8 MB (7758451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47de663876a6a6663a29d6d1204aaf93c785cfc1b3815b41407eb782470f89f6`  
		Last Modified: Thu, 16 Jul 2026 22:55:27 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; s390x

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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
