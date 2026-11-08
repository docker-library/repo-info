## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:4f34e1d673fdb65371de9f88bdd32c4e30152fe692b35604aef5c0b3c0e6da10
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

### `buildpack-deps:scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:712f969c9d81a35f9f00cce701faae521891d42a20b592b61bd0e6c5328fad7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142865592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07b9feaa89e5c6e39763a883bebec8e6b1afa8f300e664406bf0ca5a379de56`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:52c1681142af84ecb5e807e6366d091408a722c06be92a46fe6887b22b90df0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9f6674d75d658d25dea941758030a5dcf0957aa973ee225eb5e181680a0dab`

```dockerfile
```

-	Layers:
	-	`sha256:fc0ecceacf54695343a440df1e93d31e37a8261f721de9b41497228381cd81cd`  
		Last Modified: Thu, 05 Nov 2026 08:32:05 GMT  
		Size: 7.8 MB (7775733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ea57704691ee8c19dc28ce560e1b78c66ea5a4ccdc47ee571a9b4da9e92347f`  
		Last Modified: Thu, 05 Nov 2026 08:32:05 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b6f4d55db57dd9f444484448d9a0c9244dc5c0543e04eed75bd26981c4032d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137301453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf2921e45a47453ba26ef987e4a57447262c11395c59aba0eee28c244ccb2cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:02:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6014ad01ba3bbdd7a5930a9421ba5183b08db4d400276b1280526dcab0eeca2d`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb20858af143effa2a6ff08699aefb8066d30be903ba6746924bc47d13b3548`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 24.4 MB (24363933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c42244bc37ee94bccbe6dff272d7c80ce633f7da5d1920286da439550a9ea0`  
		Last Modified: Thu, 05 Nov 2026 09:02:41 GMT  
		Size: 65.4 MB (65357661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:856bb6267a7ddeff2d0c3a58b1393eba8e9f2abbfd0144f6682100ed01b7e828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3259a71e6c5ddf5c595a357bafef84f99b26e3057fc49872dd2e56ddb7fcdc`

```dockerfile
```

-	Layers:
	-	`sha256:83d3278a82e892d70ecd5a0f29d8b1f0dcdb1841e0bc90c6d69b5a00c9a75258`  
		Last Modified: Thu, 05 Nov 2026 09:02:40 GMT  
		Size: 7.8 MB (7776771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bed85f89c50f5995b600a8af0b47dd1def9ddad9ab5cbe0922fa57d214c1e79`  
		Last Modified: Thu, 05 Nov 2026 09:02:39 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:00f00a8dd29a25152e6d7ddfe67d56aa6abeb2457878f359e032099261ec1c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132227694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fcbd3f9f6be031c3d970ff1e4988c8d1c7ddf7c76e40dcda63108e6bc10082`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0fb4ce807b35851f8b2e73f99af2ef7a450cb533d1a1175c9f1f30f0dcf1ddec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b453e67dc0081ab54ec9f6506aa31d68a19409e7f35addb1c9a1b036380de3ab`

```dockerfile
```

-	Layers:
	-	`sha256:2587f4530d91cd862afaac9db2de50351b2932d7d5da296b76e1b8b156e283d8`  
		Last Modified: Thu, 05 Nov 2026 09:24:25 GMT  
		Size: 7.8 MB (7776240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34ba72b53c1f5ab1ef401de7a18e5d678d935bae20beee4fa1d936c444f77193`  
		Last Modified: Thu, 05 Nov 2026 09:24:25 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4256ac3dbf04b630b9082d15c426b1982ceed0b071b2abe76a40ad028d323636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142449890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698439fa6f0610f43c6496739511bb3ecc5342c3d938ed9fe4e1a397f8761fd7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:95786b395a8feccc6af29b3e53127d22cba637fe2b871c5ea9d8f377e99363b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e8f52c92b390d7f3b6d99640c414da9649282646d81c371af9acd16adfd394`

```dockerfile
```

-	Layers:
	-	`sha256:96285d6a8f31341d2564084a820c1111953faebdcde239d548e4bfaa99d7ca5b`  
		Last Modified: Thu, 05 Nov 2026 08:29:33 GMT  
		Size: 7.8 MB (7782771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffaf476bd438a47d50029fc7fc891e8e8eee7b4de8814bde77bfc4b84c1390ad`  
		Last Modified: Thu, 05 Nov 2026 08:29:33 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7b4073f252f377c812a3993e316b0beee84710416101b9b8fdfdfacaa330fe46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147576933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4378552fce4f16c5e3453946fc066205acac427746320868ebb315f67fd1b5b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:557fd9d91ccd3af4410a640b8327d169a54523baaabee6cc1e2da88da810694e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a8123e0dd60fdd351846d4e97799fa9aaccd035bc483e04b2f12b29c82089f`

```dockerfile
```

-	Layers:
	-	`sha256:037929d9ce949672e17d0c47ed9e55531a962fcf12f92f9da7e34ccfd2e5723f`  
		Last Modified: Thu, 05 Nov 2026 08:24:46 GMT  
		Size: 7.8 MB (7771870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4f8cf43dc315ec58a3f197db8b7cc25fd93ffc4fab5f487e6145512b9b371e`  
		Last Modified: Thu, 05 Nov 2026 08:24:45 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:79e8f92120870f089edd3959811e68e65e2653013cf9d671b446965bce0d9e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153342261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e53921d5f98ed41041f53b28609f7fb14a657895302ea476309eda8e583f03`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:705f1bfe0bd84238cf93150768c9307eef581a756fd7e92d1649ee0727762ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a283da6d6f3ca2eae940c0e1233f77e663c507c50f2473a54321de47c6c6888`

```dockerfile
```

-	Layers:
	-	`sha256:500341a63ae94fe322b6b94a06592d4968bdc2f56a53c0c10552f351137183b9`  
		Last Modified: Thu, 05 Nov 2026 17:27:41 GMT  
		Size: 7.8 MB (7782852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8320a5aa8d7386c2f0749f07c62de343abf3c1a1b3b95a2aa99a4c3eff3b088d`  
		Last Modified: Thu, 05 Nov 2026 17:27:41 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f2781902e83f7378a911a338679a13317f71732ad3c31f051427625927e5d05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139578071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb3ae0d919f29a6dcb0eb168d5fce00a0a61f958efa9d5e9b2708c16d8c0ec9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:827e29c8df6c5f311d3410418bfa3dc5e055b55374f8f08fa168a66768cedc58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7773180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbba9bb3b934bdc6f73ca6470b487b18b0ec3b2f291a92c0efba883befa7693d`

```dockerfile
```

-	Layers:
	-	`sha256:4ef66393ca1291e51cc4b2ff9ddbac3a19750a9d0bc8f0977de84dee3b7f4c23`  
		Last Modified: Sun, 08 Nov 2026 19:01:34 GMT  
		Size: 7.8 MB (7765565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abeff70920fdbaf5ce6e61bba18d5441f5b919f77348af706a81402f4367e08e`  
		Last Modified: Sun, 08 Nov 2026 19:01:32 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2585d46a7246115e338b796aa767bff1f8f6fdc0bc731468527b2feb5dbcc55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff6e253d9356a10d656358c01a3b226848b65aa2992a2969f34f72897b344f0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd185c00e81ffed1062ed8be9891165c8b37d090e0cb0a021a4e84026ea85808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736ceac9c31538b92037c9444dd8fc9ca9ea6c5ff1e5a0131f232b616db4515b`

```dockerfile
```

-	Layers:
	-	`sha256:5771c6c9f4d43d034737935a522450283666d033992c236e83ca45ae070278df`  
		Last Modified: Thu, 05 Nov 2026 08:49:08 GMT  
		Size: 7.8 MB (7776646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c428fa83cc042c516842295ac0329a6023aa38fb42524b4a48be3195dd0bc69b`  
		Last Modified: Thu, 05 Nov 2026 08:49:08 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
