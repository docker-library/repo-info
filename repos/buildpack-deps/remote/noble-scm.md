## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:8d9e6fd4c0c302d5e572914da14bd6b2c8bc536a4559ef2cc5efd94e8ea59caa
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
$ docker pull buildpack-deps@sha256:aef7a0b29237b635f952b2657cd1c9248c52bb6479ef15f3666c7647bfd7df1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88783494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0ce5f132a00412f3baaacafff6762a758ab4d7a0465a2c06c80b7906941af0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:16:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f72da9ecdca45a65023b1c25391108c4cc731a1427adfcd959e801ee85bc5f`  
		Last Modified: Wed, 09 Sep 2026 02:12:42 GMT  
		Size: 13.6 MB (13586137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2bc542c6cd39743a89f9cf535a6dfd4a2edd7523f5a354c26dae37e659860c`  
		Last Modified: Wed, 09 Sep 2026 03:16:32 GMT  
		Size: 45.4 MB (45434104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc83426edcbd7a930e2e0d66141341bf3bda0486f55be37b3a4223868f6c4956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a5da8ecabba44b831f91da9844cdbd9902ddb9b5223a53a998cb80773ede8d`

```dockerfile
```

-	Layers:
	-	`sha256:22fac415d72f0c447ee84b583d618658bf2a7479135948e4ebcf1bed265d20e3`  
		Last Modified: Wed, 09 Sep 2026 03:16:31 GMT  
		Size: 5.3 MB (5258444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de55920a178fcaaa2c604c08dfc46a1ece2528f511044a71dd86f0cb255ab47`  
		Last Modified: Wed, 09 Sep 2026 03:16:30 GMT  
		Size: 7.3 KB (7261 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c6ebecdc52f905bc6c2bb65c4cef2425a2c2bbb755659a4e75e1d34e1b7fcda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88621925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c571dbeb5d67948c0a06cf75bb1ac3b4d6d18a62779d68062defbce5955f501`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:50 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:50 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:57:53 GMT
ADD file:7b24dc56d03ed9c6ddefab76dfb3e7b8bc4eafa9059d2a0ed52016ba82b6d110 in / 
# Mon, 07 Sep 2026 06:57:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac350a77aef078a00c34a878dd3fa3d19b6bd2f94c6d3cdaa86bbc9e7e6038a`  
		Last Modified: Wed, 09 Sep 2026 02:12:18 GMT  
		Size: 12.7 MB (12741414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a507e88076ca6e489fdc8de8ecdf8111f3412e5e1094dffe7a853961ccd8e62f`  
		Last Modified: Wed, 09 Sep 2026 03:16:03 GMT  
		Size: 49.0 MB (48986494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1a6bc74a7534d3afe42d6a006fc2c33ec2e4a2ac495b8b2bacb0fe5054c07d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7dc84b023198288dbd3be4762b6bc2640fed09ad904b87ff6696b0c84864db`

```dockerfile
```

-	Layers:
	-	`sha256:36812016e6bf676c2a459dab8d5f0fa65f552de219e2583501099b37d9e9abf7`  
		Last Modified: Wed, 09 Sep 2026 03:16:01 GMT  
		Size: 5.3 MB (5259742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0fb31917b43499f0303016a5a32deb5f8e8d80b97a2dca8d33701ba14b14ba1`  
		Last Modified: Wed, 09 Sep 2026 03:16:01 GMT  
		Size: 7.3 KB (7325 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f34f238ef199258d88fc7c37f4d2371391a3bd145d77e82ec88062abf2e5086c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87764521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2f4bac3b22a4a00ef6e687599f5eaab65ea1f2d6360bd71a7de976dbfb3034`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:27:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d97f4e0d598717ab921bc277de852539387cf680a05c69d0bf89f48a83710e`  
		Last Modified: Wed, 09 Sep 2026 02:12:27 GMT  
		Size: 13.4 MB (13430022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9448362bc672b3ac012dcffead66933a572ad00b45ddbc32ee27171a0e2b48e7`  
		Last Modified: Wed, 09 Sep 2026 03:28:10 GMT  
		Size: 45.4 MB (45394484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9671f34962a1779651b0654ce125a7cfd42fc36778854fce2ebe9bfb90bce6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c4951db64903922632f47c4fe611815b8fb728e381e8042666af8a55180272`

```dockerfile
```

-	Layers:
	-	`sha256:ffbaaf92cce4d9a50c4b9ac745e5c55b8d48e898f19681433bdb9cf30a7ea2e8`  
		Last Modified: Wed, 09 Sep 2026 03:28:09 GMT  
		Size: 5.3 MB (5265636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f57d77f4bd91e03160862d0b1db004eb0472c62fc8dfb46ac33d94811039ae08`  
		Last Modified: Wed, 09 Sep 2026 03:28:09 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:292e4b635f9b10bb25a66b3f2a922d31565464053bedadf46de473f272c85221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100680501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9c936becf4dd13af96c40c86bfdcdecd0bacd1f350de90dd81b91bcfce2e3c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:26:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 11:57:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd789139c90474cd14d0f1d64890b57524ae7f44613110a6629eeb565746a1`  
		Last Modified: Wed, 09 Sep 2026 08:26:52 GMT  
		Size: 15.9 MB (15915507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25731584d89277a0bd4f1efc9b5be6e658dd88951e3d6f52cdb3ffb1b476f7a`  
		Last Modified: Wed, 09 Sep 2026 11:58:17 GMT  
		Size: 50.4 MB (50388115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a64daf723877a5b408c8d3bdda80a2cd888d507031856f3e41b53dedd5da5f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f7156ea6f9b91e6f05b3bd49e0f83c835fedda6edf74b0f80de4938eb1c1f1`

```dockerfile
```

-	Layers:
	-	`sha256:a41935894712dff96d685458dbec32a6c2c6921e5a2f6a15e7460ba8b694d707`  
		Last Modified: Wed, 09 Sep 2026 11:58:16 GMT  
		Size: 5.3 MB (5266298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59f193d80d09a22a83e64d0bbcf7417cf4f4b4c0a5ab8bae094fb1e3df3b4185`  
		Last Modified: Wed, 09 Sep 2026 11:58:15 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c55bc6ce27824c723e7e917701b04ab322cf7c49c147f00d243177c7aed541bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99242468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad352c28577e8a60d6c2142df28ae578d673b08d0cea67dc3754d9a9788d5db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:15:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 04:51:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593967676d34c758aaa75b1e147df2837aee53580eac5c06a35abbfcc082e1c7`  
		Last Modified: Wed, 09 Sep 2026 02:16:23 GMT  
		Size: 14.3 MB (14299388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc15b65548acc8b5c1fc25953addc329cb5fca52f72503c67c9ff24b228d5b4`  
		Last Modified: Wed, 09 Sep 2026 04:54:40 GMT  
		Size: 53.9 MB (53893878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:41b133bfc59e0128625f778ff7797bdc5e3e8b6946faf0521b5d94a4ee7a8879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305bc2f3886746d6763e334fe7d473283746d90fcc69227c4fa6636cb54add2a`

```dockerfile
```

-	Layers:
	-	`sha256:20aecafd61491c73c3f3658acf8c995e9993c858300b836860ca97a53fe3870e`  
		Last Modified: Wed, 09 Sep 2026 04:54:32 GMT  
		Size: 5.2 MB (5248840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:781e4a99cf9bc03170691488bb255a828ba51daedae09453c15f5054ce9f40bd`  
		Last Modified: Wed, 09 Sep 2026 04:54:30 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:66ba0fc8a4cb7955122f48ccb5b9e7d4c85ddb1b755489e06daa77b6a1372e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91597125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a155f01ff947617edb2b026e54eb5ad191da43e4f241f9280c8cc7eb641f2166`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:09:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184cf2513eed8c4446aae4a061275d88056c73dd044095facc400ab5828a8a48`  
		Last Modified: Tue, 18 Aug 2026 19:09:58 GMT  
		Size: 14.9 MB (14893500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de257b0b73ad9ad17b343cabc3219ef6741f5d76a44b913cf0e82500e601959`  
		Last Modified: Tue, 18 Aug 2026 20:13:06 GMT  
		Size: 46.8 MB (46768370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:84e92c3cc5d1d7728b5a5564919438e58ff3d61cb92de3c837dbd738a71699c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9844d218ddcef498fcfe08bf9ede28a3a9be357f7a1fd46b2ff6e7be9030bccc`

```dockerfile
```

-	Layers:
	-	`sha256:86388f1230614bfc726298bf9cfa088086fb77832c4626432bf7c5c2ccdfd4e3`  
		Last Modified: Tue, 18 Aug 2026 20:13:05 GMT  
		Size: 5.3 MB (5260754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10aeb27d5bd6d309b4a464136933bd9481f555ed5edacf59266b716c7ab487b6`  
		Last Modified: Tue, 18 Aug 2026 20:13:05 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
