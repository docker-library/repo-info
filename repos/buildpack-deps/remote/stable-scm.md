## `buildpack-deps:stable-scm`

```console
$ docker pull buildpack-deps@sha256:6ecda666077afb1d88cdc0fc683d766b161ef90a0f5768e223a5632fcef99cd3
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

### `buildpack-deps:stable-scm` - unknown; unknown

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

### `buildpack-deps:stable-scm` - linux; arm variant v5

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

### `buildpack-deps:stable-scm` - unknown; unknown

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

### `buildpack-deps:stable-scm` - linux; arm variant v7

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

### `buildpack-deps:stable-scm` - unknown; unknown

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

### `buildpack-deps:stable-scm` - linux; arm64 variant v8

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

### `buildpack-deps:stable-scm` - unknown; unknown

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

### `buildpack-deps:stable-scm` - linux; 386

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

### `buildpack-deps:stable-scm` - unknown; unknown

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

### `buildpack-deps:stable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8e58d97851879f8ecb555f34004935c5cedc336e2f672958691b6dc8ea44cd73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153338651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5075c3647e84826abfd14f13c2a76c6bfbdbe6fe1ba9ed09d1e51de6d7c4a33`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eba783eabf3e1f9d0d65f7262b1afc902b2e8803bb451aa6b93ec45ae918d24a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200d98c1ba1add9605ff63480a2fe9513582b8e75d5a7f6a0ecd5eb56b73196d`

```dockerfile
```

-	Layers:
	-	`sha256:e6df422e43b5682205564e43265f5c4ce88cd1d8963a666f2c77fdf276fb81c9`  
		Last Modified: Wed, 28 Oct 2026 11:57:55 GMT  
		Size: 7.8 MB (7782852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15a53a7fabafac66d7dfe945804460321f305393492af2852aaaeaceceddb97`  
		Last Modified: Wed, 28 Oct 2026 11:57:55 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:ba27c68a76fb66ce52c50df9a91e543efc1820600a6b05cd5345cd7ccebc9e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139577334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b211763d8523be976e894e8fc0d3840f6a95ba88c8458e3afa6fd55594ee29e5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 11:21:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:43:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6b9c47bfdb663aa1d432fc6bfee0c5338e5f9e48ccd84b41427dc0fd31a54dc4`  
		Last Modified: Wed, 28 Oct 2026 18:37:39 GMT  
		Size: 47.9 MB (47891536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c51a9da84f9a2839fc5053032d47d7167c1d7b755a3ac418f3c281c9a7469`  
		Last Modified: Sun, 01 Nov 2026 11:23:30 GMT  
		Size: 25.0 MB (24972796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5454531f1631dfbcd80e0c769a250fcab56937072652b2af592f111515e13cb`  
		Last Modified: Tue, 03 Nov 2026 07:47:41 GMT  
		Size: 66.7 MB (66713002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f4653ca25f3a1bda2371be5a8574f38c15f9b48ad87ece9439de3c3aa72f3fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7773180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c91014244c1a6c8d308b4cba11ff69d53624939a1a0bafc2556de451bf9281`

```dockerfile
```

-	Layers:
	-	`sha256:53736af99345a890b971c08856d9fbe0c2f5f74e3872d8ae69497ee7e395d56f`  
		Last Modified: Tue, 03 Nov 2026 07:47:32 GMT  
		Size: 7.8 MB (7765565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33e8324080cc7062d7c2ae5737f1af9c325694ba54a508a34cc22697996014f9`  
		Last Modified: Tue, 03 Nov 2026 07:47:29 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; s390x

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

### `buildpack-deps:stable-scm` - unknown; unknown

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
