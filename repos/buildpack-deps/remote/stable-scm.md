## `buildpack-deps:stable-scm`

```console
$ docker pull buildpack-deps@sha256:3ddae3f8fa2a5ebeb3de65364483320bc03f9f07fbea1093a0073507b2c6f169
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
$ docker pull buildpack-deps@sha256:57c2de9a151180bf9ba8eea8bbebf8c546ccaa629f4fec8ea9b18330226af31b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142848020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ace397d3e9a79194eedcd61dc9cb6ecb9904a79463747f93fad0c93d04a9c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c0fa03193f97bd2dd3b2f3dc52bf9bb1bae328d8ce5025d8a31ccff66b9acf11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea2de81d7d09b98a7b37fbe4e4c3ef85bff6af948c76695aa7852847f196caa`

```dockerfile
```

-	Layers:
	-	`sha256:be683157581265e17f5fd41b0cd1487cf04ce106165ad518784ed09166e1dcc1`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 7.8 MB (7776509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b221f846ad1987bd362951881e57fa6b6172e9302c5101d60d148fa538fed2a`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:4b998ba2299701f66b1c1f92208f4a5aac03ceecdfba013f3a082ac5a208ae7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137277208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fa751eb8b04add63f392b7fce01ea0e29dfcca356cb3ef3f645cb63e0d9b1e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83902e4163989560ed5e5a05e1775bc79e7d58bc33cfa8c9efdf74512f232ba`  
		Last Modified: Wed, 21 Oct 2026 00:48:45 GMT  
		Size: 24.4 MB (24365141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a514e4e3df7de6aeffb7187435a645d86ac3a67b5af968ab3c1e49921314a3b`  
		Last Modified: Wed, 21 Oct 2026 02:09:29 GMT  
		Size: 65.4 MB (65352174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4cc92d220fbe95f118a359fb81b47d16e3219006b239d99a0ef1982b938aa9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7785196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbe2fd5e8e10ceb005db4a29f904155b98d245386f7cd3e4946baf122d24369`

```dockerfile
```

-	Layers:
	-	`sha256:3d6894b503d9c4b21a8c322b8966c571259e605de1a4aa98c4e595d2ed99010d`  
		Last Modified: Wed, 21 Oct 2026 02:09:27 GMT  
		Size: 7.8 MB (7777547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6c9476374e2e3faef512aa9645ec905dd3689e6985e34f02d05d97ac9368e6`  
		Last Modified: Wed, 21 Oct 2026 02:09:27 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:16f7fa7dedeea951f209e6c82be2ab1768f3d125fde992106191bca7b288dcfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132213179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bdcaca316540e720ead78149e6a5c439a238d2451b4c3ee315e9a3fd7c9e01`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c8b01e0bd135a63003d64873b33aa0ce0c4aa885d1c04a86a450de9b4ac7ca12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db0f636237b7136b5ef6ecd58803e35c9e32f79e84be3822bad9ac92958a524`

```dockerfile
```

-	Layers:
	-	`sha256:920c90fc74c5e233546cb34c29b29fce265ce67880fbc13aa7e02ebc638779f4`  
		Last Modified: Wed, 21 Oct 2026 02:48:46 GMT  
		Size: 7.8 MB (7777016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36e16a4eeadda9734f3d772b623becf13ea80a85d1dc98138f5f95f45579af0`  
		Last Modified: Wed, 21 Oct 2026 02:48:46 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bee6b36524a328dde0f20c8d2ba0e00388c320bae48643147b068ca6866c1d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142432354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d11c2354f77d89fb2f073e4d9da6cb56971ae2cb4355694529fd46446ff7a5f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:64b0cba80213c9318d165e484061b7972a80d71a725dfa43160cfb742c06e330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfbf56f0384eba9edf00c6a27041e83aec7bbc92ace8c8195a3d664d6205dd0`

```dockerfile
```

-	Layers:
	-	`sha256:4156cf2818d0105fe9eb93474ccda5cabd8ee8a28de9eacb3b316ec554d73079`  
		Last Modified: Wed, 21 Oct 2026 01:34:20 GMT  
		Size: 7.8 MB (7783547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11a97243389693b1fb497f293f90d523ed21cb5614126b4ef7e323d6db46b67d`  
		Last Modified: Wed, 21 Oct 2026 01:34:20 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:af01d12d349643a7475a85b5b4649e675966c4b4d9d7b188b0fd89e30dc2cc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147565117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf168b635fcade5f142c03036c8f9728f2b97da4fb8dc7814941f441679741a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e8429ccbb59e9df721c1d252d4bed5a6834f708e4c7e16b06420bfc82f5f1115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856dd246d38409392309efc5990968a4cae818ba43d3112fa472f64d92f68e24`

```dockerfile
```

-	Layers:
	-	`sha256:052254747207c5f25ddf6b3cc14e343f5fabde020ff546317650886f3a7acba1`  
		Last Modified: Wed, 21 Oct 2026 01:24:50 GMT  
		Size: 7.8 MB (7772645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0594d12702b7b4c4e1a4ce795452c66b6db44970ba42370c96750ede8b3b70d1`  
		Last Modified: Wed, 21 Oct 2026 01:24:50 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c04141c9d4d64bc15fcba6d9f47fd877f84653ba5782c4bb51b75201ba3639be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153329114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243a04c48963e625a2997fe08f3a16342556cc9f36ae0d35f3fddbc879871f79`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7744e5d6fd3bfcd3262b3a9e3b2a27318e06fd070d6b1166cec1ffd0eb1390b`  
		Last Modified: Wed, 21 Oct 2026 12:06:36 GMT  
		Size: 73.1 MB (73097411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:daea8ab56befa16190e78b4d478b35c63c31507ac77a3f5a36819c8603263d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1e9337d7ccf6e9f95bf1987132917fa1ddd20a053ed5081a4306b4a4d73077`

```dockerfile
```

-	Layers:
	-	`sha256:392d5898eb54805726400e4867778c8854f0c5fe230c5442df19a539273d8cf7`  
		Last Modified: Wed, 21 Oct 2026 12:06:34 GMT  
		Size: 7.8 MB (7783630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47ed9410697bafbeef8882afccd0920d53b6bbb560910c46ccb0cc9aab2cda6a`  
		Last Modified: Wed, 21 Oct 2026 12:06:34 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:5edb855b8548cda696c18a39432695164ce956efa365cc46403a7b2a6fb97437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139563189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1462149908c2313a4e72c04dbb995e60c33a207c81dfacf768511f79c8737c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:15:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 04:05:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32139541f4549e36734c5a88277feea7f893f4a9131721e90b51bf8f6e15227`  
		Last Modified: Thu, 22 Oct 2026 05:17:47 GMT  
		Size: 25.0 MB (24973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b2622bb15621b5ef42ed7c0e2e08f6323cce082c63a1a767ea4a063cf866d`  
		Last Modified: Sat, 24 Oct 2026 04:09:18 GMT  
		Size: 66.7 MB (66713038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:94d1f5564afd3e7dc238ae31173dfc9212107d8f152b2b676aa348637ad45949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7773958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06128bf06f60e334c58d07cf05288a8b3ecf034202a8f3d83a4ca822ee42f98d`

```dockerfile
```

-	Layers:
	-	`sha256:dde1f85c184cde325408502a018883177e88c3b3a2fafe87f6ef837362247e45`  
		Last Modified: Sat, 24 Oct 2026 04:09:09 GMT  
		Size: 7.8 MB (7766343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47b18555683a5b9469624e0580e0272a54116d7e796bebd7b2a0ef28722d10ed`  
		Last Modified: Sat, 24 Oct 2026 04:09:06 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:29c23c7b411b1e30d221a20a6eeed3b1a9e5451113e295cd79215c7142024ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144937499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9879f2e742d50bcc93f6089996f9ee70a4495377601390b1ca4106b7293c29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4ea62edf7f8904f164b449bf7a163e179ef4c17a0e300feb47495a9bd16f4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1119346438294fb36eb576fe45527ab9943012c006f974cf37139f4c29fa669a`

```dockerfile
```

-	Layers:
	-	`sha256:4a2d420c9bc93f71736b9950e294c7b68bb278837abbdfb8a9da505e8a695cec`  
		Last Modified: Wed, 21 Oct 2026 01:56:40 GMT  
		Size: 7.8 MB (7777422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ed4738bcf81c2852994d4f63070eaff83896e328577cedb5553a2d6c6465abe`  
		Last Modified: Wed, 21 Oct 2026 01:56:39 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json
