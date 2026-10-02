## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:a2049a4ae157e738d66a02198c132a90a98dfac30309df9a9de32940c770436e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a09deee2ee6e66737c3fe62f43dde3f5b4c00e0c26430f7fe6bbfb98ae343fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91128076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0042a3b2205de30339a0febfda9586479073cb8729d8682206ce4578f222c10c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fd2ace4681a88b41d1f5fa2627b664c7046f4cf550458a893ebec806a22601`  
		Last Modified: Fri, 02 Oct 2026 01:12:07 GMT  
		Size: 16.0 MB (15994624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c102ccf6ed98219ee663f53642db98e0afd3cab915fed55c1dc4b3a6e2d9a74`  
		Last Modified: Fri, 02 Oct 2026 02:16:35 GMT  
		Size: 45.4 MB (45369030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:51279156176ac3f7ae50350ed72e9cb3dd06692b265c9cb7e87297097a60019c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ab01aa1fadb4c2267d443a69d242c528a0197a93c9b31de7450dbce2b5936a`

```dockerfile
```

-	Layers:
	-	`sha256:f1596ce34cb398ecf860c33617282f3fd991a5a7eb12fa0a4a274a535b86f0e9`  
		Last Modified: Fri, 02 Oct 2026 02:16:34 GMT  
		Size: 5.3 MB (5258454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb985cd17aedc21cd5bf4db1454fcce7b11cb7072bf3323749d15b985415dfcd`  
		Last Modified: Fri, 02 Oct 2026 02:16:33 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7e458caf99d8063a852c58517b10ae4a9331f794ee424e025309091c89cae7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90339593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba0a0be8bab688f45ebdc0f1afd9c38e95438f3d9d92180382cedc06841d666`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:15:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbde56f4bb0e3e1a903354b66069a0c383d8bb404381792f73f9b5099850d13`  
		Last Modified: Fri, 02 Oct 2026 01:11:35 GMT  
		Size: 14.5 MB (14535066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5659dc0ae1e2e0cda5057ba67cfea6c8777fc297738a21d30553eb9412504f6`  
		Last Modified: Fri, 02 Oct 2026 02:16:13 GMT  
		Size: 48.9 MB (48908910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:829d352b258f2be2afa8b5fca4bbc0fec66f16587bec98595816f5b9ffdc5743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727e5c67427791fdda84694eb557f09fd96f59918d66e587cfc8588bc9bc1aca`

```dockerfile
```

-	Layers:
	-	`sha256:f4dc908c15d4468333a1e3cfe72c0ff869971bec6c73a3f49bdfdf05a0396554`  
		Last Modified: Fri, 02 Oct 2026 02:16:12 GMT  
		Size: 5.3 MB (5259752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548f487696c5b73219c7785d456731001d33b61c6e35db7b3002523cab3dd176`  
		Last Modified: Fri, 02 Oct 2026 02:16:12 GMT  
		Size: 7.3 KB (7326 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:fc47203ae2be977ee847c400a1e1a7f64310655656132f1cd643e811e5226cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89951000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c8b3a74262fadf66056231cbd18d053eb5d0a2225bc7b742b7778f75940c11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1418c2a6a74fe5b837007ac399ab7e95af8dc1234737b9620f318a77dce99dae`  
		Last Modified: Fri, 02 Oct 2026 01:11:54 GMT  
		Size: 15.7 MB (15694771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9ca2c5472c882be10ff0957cf103ecf9f8b873d58826afd4fbbc8c94b7723f`  
		Last Modified: Fri, 02 Oct 2026 02:16:21 GMT  
		Size: 45.3 MB (45316142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5516441a23e4d46a4851e5a49e8bd03635cf550b5a2d37eaff2cfb88b3c7515d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71268c8fe9a60f529fb2e9583610ecbb76c17e7150837008b4256557a1babe27`

```dockerfile
```

-	Layers:
	-	`sha256:81f62c0c78b075ab8b97da04de72cbc2d196118017d6dbc5274477727f0e9093`  
		Last Modified: Fri, 02 Oct 2026 02:16:20 GMT  
		Size: 5.3 MB (5265646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf5561d1e6c7e086a1dbdfa123a8f0a4ec3fec1cf7e4307966d5eaf4b5b3538`  
		Last Modified: Fri, 02 Oct 2026 02:16:20 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:021a2bd4d5d6f7e800ecd1af2ee45eb58c5b46f39094688bdcb69a777a7c1b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103435127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc747b8a838268631aed1c5b8dd889a7cd1239aa74163b3e643342a1720c1fd9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:27:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 06:04:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637110a38faa6c6a3c0a42a8be6ad5340bd3762f01bf040107e23c84e720ba51`  
		Last Modified: Fri, 02 Oct 2026 03:28:10 GMT  
		Size: 18.6 MB (18603593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2404a0fc4dcbc8cf89ae96fd049c3716d3aba3e2c6c207b8822414166ffb732d`  
		Last Modified: Fri, 02 Oct 2026 06:04:44 GMT  
		Size: 50.5 MB (50455025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:347562351eab121bb2754d0c961c40e782b82cf8756faeea26d04f1b371cf489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2163028139ae58f7365d1eafa5a394307abdee23d8a349552ce0a2f581597ae0`

```dockerfile
```

-	Layers:
	-	`sha256:a70250deb1ed4bdd8509202afb924567c65919fa7b5baab22ba1b2b8f870bcf3`  
		Last Modified: Fri, 02 Oct 2026 06:04:43 GMT  
		Size: 5.3 MB (5266308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:661a9c3d00b007069acd11754433fb3261c8562d9c8a05389699466c5df480b3`  
		Last Modified: Fri, 02 Oct 2026 06:04:43 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:833ae8fc5ca2b800bfbb8f6ff1188aeba79454783b4589f8053141e6fd1d1084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101619668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4385ec2e1961f1da6caa344d019fa998b88c8c4617249d89e50b12ea378f705c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:30:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 21 Sep 2026 10:04:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067285e08e7e2cc209363743e94cf2c4e32e562696770fe1d39819327636a8ae`  
		Last Modified: Fri, 18 Sep 2026 18:31:49 GMT  
		Size: 14.3 MB (14300700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44ceb0c29087d74b563ce50dc80ac873aea9857dede067413e87992c419bfd1`  
		Last Modified: Mon, 21 Sep 2026 10:07:16 GMT  
		Size: 56.3 MB (56266366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f970a260f4fa3a07fe8691f792485c51fc521f410019b7f09bc8267b602bb7d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a2f7e722c4af2bd84417a6666ff904193f8211815935de20b179d7bc4b07a6`

```dockerfile
```

-	Layers:
	-	`sha256:1917412926bd6ea9904feb2c47153ac9aafe9a691b06f263b4f43b5e775ab57f`  
		Last Modified: Mon, 21 Sep 2026 10:07:08 GMT  
		Size: 5.2 MB (5248850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b666c9d787354528e66834438dd80b6c8ffd6d1151e5a74bc3a46cc8c79ab0d3`  
		Last Modified: Mon, 21 Sep 2026 10:07:06 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a32946d0897b2687911ef473eb60cbacdd9053374e06e22e21d78e528a31ea80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93745785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff055a30ca2944e2f2863c7b00e001919bc1af98bbea30ea19341b49648bd607`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:20:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cd4e7372c422f6dd092c87d7b8d982498eb40b4deddf969419e88c7590a03d`  
		Last Modified: Fri, 02 Oct 2026 01:13:43 GMT  
		Size: 17.0 MB (16994197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfe645d729015d5a45508a9642a0768ba304feec77208654d9ce04123fbf183`  
		Last Modified: Fri, 02 Oct 2026 02:20:43 GMT  
		Size: 46.8 MB (46806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:13c0d8ac1cc7bb0fea62012cdb536b4c1aaf688ae8c6292f996be3a4909496cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728fde33a8d778bfb77b12366760b6a76e76f968cc8992ea111388fd21e7e190`

```dockerfile
```

-	Layers:
	-	`sha256:6cc970535a6a444a847754260c7209100a387f945a1e5c3129ebce8757b1dc45`  
		Last Modified: Fri, 02 Oct 2026 02:20:42 GMT  
		Size: 5.3 MB (5260786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e656063249736cbcdfefaac9387b6f555d6c9d6631726268c1020d1f92abb428`  
		Last Modified: Fri, 02 Oct 2026 02:20:42 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
