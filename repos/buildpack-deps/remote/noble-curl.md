## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:48a80dfb7e2f2d1e93dbfff934fd2f187f306eef36cb5359ef8bba0ffe9205b3
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

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:af40ae792b5ee49c4fd176078d6947ee1ba44f92daebf1b4db79d482b9bd7c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45759046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e627e581a9e262034d6f21b88e97d2e835541eae1668267bfb8841b6fb6726c`
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

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c8f9db6dffb8daa1d2634c40b93431bacb7a1bd56e5611e076e1540a2ed648e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3e62b88d568a7935ce48ee0122d59e496e682419b3da62e5bd3abef4515ece`

```dockerfile
```

-	Layers:
	-	`sha256:35fa28970aa2154bfc46ffb1a0d5dd78c1da6fe09b6c164da6d5785ddc8409fa`  
		Last Modified: Fri, 02 Oct 2026 01:12:06 GMT  
		Size: 2.6 MB (2591659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdd9e84d3e4a4decd8824eac4cc2a716814d4b2c081f06050d2dcd23eae98091`  
		Last Modified: Fri, 02 Oct 2026 01:12:06 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b0dfe73106313bccb3eb746fe48913017e41058891dd38b0259eb89e657ab4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41430683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0cd71fd6d64e6aa5f3f505339a74f1933834b02672a6f96982c829900ad16b`
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

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c74dc8a939c6be159e90b072113dbb80e61bf73853126145b4175b085927d48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c621bcdc62573f811664e9c77ced33a1c891ca47dcc4f1fbbb361176d58d88`

```dockerfile
```

-	Layers:
	-	`sha256:42cbb3ab27dc221ef38abd4fe10ef7606e990bf8d00adb3da5f0317d8126f79d`  
		Last Modified: Fri, 02 Oct 2026 01:11:35 GMT  
		Size: 2.6 MB (2593963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de910d90914b048b70912d6387517cf0f3f8b46de0fd963e8a2b6f61d8598605`  
		Last Modified: Fri, 02 Oct 2026 01:11:34 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:552b9f61da20c757bb82e75abd65e03d0863a30f75bb8f68d00ae1fd448794ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44634858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04e1844611d42258e7bf0a3c68d0a1c353387fa03df9fa2918ce5990c0e7c1d`
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

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4fe14afa463b3a39218f4b5773d908f1ff58ccd06d2f2ccec76857a8318998f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0bdf2992a889e8da4b23cc09f619980b9454f5f28dca0b659542c0f9b160aa2`

```dockerfile
```

-	Layers:
	-	`sha256:2cdd7e358339d8ff8e7b998497062040785c80cb32c6f0da2b606cc7fde6c6d8`  
		Last Modified: Fri, 02 Oct 2026 01:11:54 GMT  
		Size: 2.6 MB (2592717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b07dbc3f13dbdcfe66ee94aca5a02a9b4fa92c6200e8e0c86631f380206c096d`  
		Last Modified: Fri, 02 Oct 2026 01:11:54 GMT  
		Size: 7.0 KB (6996 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6d23d0ac4e80149a1447b2eca9587e1e2d2eb1c2596d9e472910b635d9e7eb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52980102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea1c91751f49e4d7b514fde313567d98d85e6f537afb7b18f3555b976764622`
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

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4b9d930abdfedbefde133a93d8c2fc0226212e3453d76fec0610d4456c953b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a012b418032281a3495f0ecea97df9dcc85a3e43238baf7bdf569c0eba8bf5`

```dockerfile
```

-	Layers:
	-	`sha256:fb370ced8390b6acf9fa8341368c06ae035050811420620968b1eec903b854f0`  
		Last Modified: Fri, 02 Oct 2026 03:28:10 GMT  
		Size: 2.6 MB (2596278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a27c29e8f05ee894c5d16233572f4c17b6ddf54e0ce28eb16eef09e0827425f`  
		Last Modified: Fri, 02 Oct 2026 03:28:09 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:72f5c498fd4359ae29b01717587ee23c2e4c722da560ec7214685b08813d39c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47511854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc4c8f73ba4f81785a2dd6e606cc3324828942a69efbedfe82b2cdad145db44`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:41:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35850526da01bc65f0adc2581a6148eb028798013159608be0e37deca406e2`  
		Last Modified: Sun, 04 Oct 2026 20:42:52 GMT  
		Size: 16.5 MB (16461874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eb09a7e232a215038e2966f2d1693090028049d35486d5ffbf7dae0a5e5a67f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84283bf96d2daf3984238da0dafe0c23a793e47fd14334d44ab39d2c7c5245fb`

```dockerfile
```

-	Layers:
	-	`sha256:eac0e47eff0b3581042603431d7cce164a24b53e5af44b526c0ade11c999cb55`  
		Last Modified: Sun, 04 Oct 2026 20:42:50 GMT  
		Size: 2.6 MB (2585558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba5e7290ff9d0fd5628a05fa384f04d087367b873ea19b6385fb5795d5c1d9f3`  
		Last Modified: Sun, 04 Oct 2026 20:42:49 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0046d178243d957f6ef7d4d93e3db3a0f06ee0773c7a239a63c54c59834587cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46939517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0993cd270e6c478f9a86fcfc08efb953088e40939dbf0752e351807506cf45bc`
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

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e68f2e90376908da88f568775533a9b6e7becd4472cd583cf88049121d06bf89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dba6b70062a1555355271762ae2ebdb64e6629d54883357f3887b47ec726d0`

```dockerfile
```

-	Layers:
	-	`sha256:7b73df604eca5ade0dda796348cf169a2aff3d68f266dee14f2e2b64e35f82ff`  
		Last Modified: Fri, 02 Oct 2026 01:13:41 GMT  
		Size: 2.6 MB (2594484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0781f2b952ee67b33c328570ef1117c4674a2240e7d071945b93fa3972836c`  
		Last Modified: Fri, 02 Oct 2026 01:13:40 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
