## `buildpack-deps:stable-scm`

```console
$ docker pull buildpack-deps@sha256:076aa0dfcdfcb2a920c205e1594e3892f5963fe7ce706b626e62eb1ea83661cf
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
$ docker pull buildpack-deps@sha256:ae3f5df0c3af13ce8d6f882607fa1b2eca7dc2e504e67a20966eba730dd31204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137293195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb267948abcacc7eae266bd4e1a0a5dcb56e5bebdfe57bb2bc7dc4a69ccd7e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:04:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2613b9f9cbe1793f19a07be0819263568ab684ead60cadb1613eb4f2868871cc`  
		Last Modified: Tue, 06 Oct 2026 00:12:49 GMT  
		Size: 47.6 MB (47559414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275198ce4aab1747f7a9701756bd8de5d9970998693ce5abd7062a463f0731eb`  
		Last Modified: Tue, 06 Oct 2026 01:47:41 GMT  
		Size: 24.4 MB (24370888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fa235e84c9141ac6638d4a5bc726912c5c743f585aef7d857b61d8dd24e80b`  
		Last Modified: Tue, 06 Oct 2026 03:05:04 GMT  
		Size: 65.4 MB (65362893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:67cd7b70981c3815d2c7456a95ea6ed721d637afe8145c104fe68dad7dcbbfb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7786473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1091cb8f07726c2161ced136aacde5777ec8ac63c3e93d3fceb0f3a636b5cf`

```dockerfile
```

-	Layers:
	-	`sha256:97b0da5acbd39bd2660376be2693aa7078615cc0945591f8ee15e6a9446373a2`  
		Last Modified: Tue, 06 Oct 2026 03:05:02 GMT  
		Size: 7.8 MB (7778824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0c43ad495806cc74a45da66465bbb85301e584b84499c53daa8778c4f93b74b`  
		Last Modified: Tue, 06 Oct 2026 03:05:01 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cb0b9aa6349b08fc1127ac086e3b318bf1eeaa0b69b62851f124878dfb43649f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132215437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ca18bfc682419e54438dc31798870ac581869b63c9f7a28d4fbcc077b975a6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cee74bf3f3c289929d39b9d0a9895290918aacb8392261782aed15594e88c248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7785942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8eb04a6e1dddfa7db7a1dfa6198cda62497f303e654cd44a6ed9ab559813de7`

```dockerfile
```

-	Layers:
	-	`sha256:07ac9f3b1e52d3c732e64a2a3e5d11a97cf6cc163aad9c13dcbaf3d319cfa0c3`  
		Last Modified: Tue, 06 Oct 2026 03:41:05 GMT  
		Size: 7.8 MB (7778293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5458916e8abe746f1b1f1edde97d042c9bfc0b039c80c526eec444d8889680c0`  
		Last Modified: Tue, 06 Oct 2026 03:41:05 GMT  
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
$ docker pull buildpack-deps@sha256:c3ff3b0362b9f6ae8be79d945b01bda07532e5fbbf99479f3b17bdb85483b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147556465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1312ee288921a779e120eb8a6b552b1b49273fc831be34d2fe776debddc2fac1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cbfaeb235ad0daa03294a921e8d9fb916fac246df65aa13cbf5696fdb61f8a`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 69.8 MB (69846987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1859033615961358bdb75aa6ce303cfb56ebcdd6c82d7d6b4bbbae3eb230c5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7781471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193e8ff59de536690ba92967e5c51efe8e82e1e11d11d081cc7559b5e43ccea3`

```dockerfile
```

-	Layers:
	-	`sha256:1e781d66fd85bb9868a20475ee233e3f240b9cc8e3063bae7b7b5c45e7170380`  
		Last Modified: Tue, 06 Oct 2026 02:33:13 GMT  
		Size: 7.8 MB (7773922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a31124dabe0baad0f2d50cd034dec58522052246e66bcc59274bd8f120750a76`  
		Last Modified: Tue, 06 Oct 2026 02:33:12 GMT  
		Size: 7.5 KB (7549 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c0181754c6f09438766a9cb9ddaf2b0a2fb8bef358c4dd3ea6ed792b80b48abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153319166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aae1a7ca2a25d2c50796cef59152b70866b12e96868e21f8b78c64f680bab04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8c19ad257b3b527081d4ff0cd20d792e3facc5b3fca88e85f791891a12b225b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7792522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed06f22aba0b0c87ae9eb9628597b6345b633236de924758eb0acb5152f0678`

```dockerfile
```

-	Layers:
	-	`sha256:68c136c59747d0781eb3ef04868f39beb1ba54615abef52a4cbe6d7abe55d709`  
		Last Modified: Tue, 06 Oct 2026 11:41:08 GMT  
		Size: 7.8 MB (7784907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf682da61f25a6dcb666ea8883b5d17e7b372d792a4e6b5765ad678f79e6d31`  
		Last Modified: Tue, 06 Oct 2026 11:41:07 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:1abd00bc8a3a6e54ec93fee3081853ddedeebe378d4edbedc47c507e0b5b3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139554429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21315e97c5554604cc690f5b06a42ad362cf688d0ca778cc47803e80c311ac68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:83e7c10288458d3d6fcf13eba6586c25f484e40673670952e81568439a8ce542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7775235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4c9bd46941586c3d8e3674a081c454ffe334ce9f074f44700c276a91040860`

```dockerfile
```

-	Layers:
	-	`sha256:df02e4bc49050fd749fb3a942df5b6f3e5b0e1fcb916256c2c09ef1c5c3a9a86`  
		Last Modified: Thu, 08 Oct 2026 13:48:53 GMT  
		Size: 7.8 MB (7767620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b86319fb76339ebb0011ceee792804dc8055bcda85039dec641b349f08e375`  
		Last Modified: Thu, 08 Oct 2026 13:48:51 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7eea162e7da925ae802b1ddcaa1d5293f44b268c5d267ee10e0b7fc4d64eec2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144930969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c553756d6c7f783620e1c49f1aba10113969b7e7d769935183fe34575704ebc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df56f137a059f03b53e52e2a56532810628887dc9bcc5d95f236015624ac3d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7786276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87074fe9a5cd7a9e7e8a9fb0dc48b374e0b8247d8fdcd6b8f66d107e859c4749`

```dockerfile
```

-	Layers:
	-	`sha256:658a7548fa62a9400f5d8accbecb01c982c202c622cc0bf9cbe02d5aa7629be8`  
		Last Modified: Tue, 06 Oct 2026 02:38:34 GMT  
		Size: 7.8 MB (7778699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966ba70356c2afa3bf1d22d81cbccfd77e2eb1342e88276d5758d7e8f25eea05`  
		Last Modified: Tue, 06 Oct 2026 02:38:34 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
