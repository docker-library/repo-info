## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:ec9476a31fe1d3d74057675bc0bc1672b21ce727315f42ca241643a1c6050f25
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
$ docker pull buildpack-deps@sha256:93331cd65cdbb4a4206303c402312665dc7697040c324d2defed5bdd30be7a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142840637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8180a0b2a4986b0a4bfbd57fcb193e3b37966bf222136b3a239c824d2ae60ba5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d358ee1effe0d0ce769270940f312f58ab39c49fb40d504a53d1fb1f75fbaf70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7785363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa28916413cc91f8389ffdd82d48f050810b9338ed8efaba9c2ac441390910bc`

```dockerfile
```

-	Layers:
	-	`sha256:91150f2f93c28916156c86fe82a18fda1f26f97f4c48dcad1f7d5d5ae050e73f`  
		Last Modified: Tue, 06 Oct 2026 02:35:00 GMT  
		Size: 7.8 MB (7777786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0403d3071fc6937e7804c72d57b432ff19234656b7203bf76d41f85db61b8fcc`  
		Last Modified: Tue, 06 Oct 2026 02:35:00 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v5

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

### `buildpack-deps:scm` - unknown; unknown

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

### `buildpack-deps:scm` - linux; arm variant v7

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

### `buildpack-deps:scm` - unknown; unknown

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

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a21883dadcd81abee8e547fa105ebec1efc384f3aecd631ecefd005419799a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142422377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7253ef4ca9d96bae36a5a0a054ed30027910e30dd37dd400c57440be3caab3b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8b2389e1cadf7bc5ad6381a371378c3fa75c55028d537542566701143bc5b7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7792493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25547d6ba37477690351ebcef89965966e6a67929331bfedf8afaec94a6634cf`

```dockerfile
```

-	Layers:
	-	`sha256:4e09729e483ea3edde64e7c4b7c15d778a1f7918bc3a0bccfafa802f06bd5616`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 7.8 MB (7784824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3aa9cd20f91598b07b1450686f2b92dc49429a61976812b2c00e25f14368383`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; 386

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

### `buildpack-deps:scm` - unknown; unknown

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

### `buildpack-deps:scm` - linux; ppc64le

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

### `buildpack-deps:scm` - unknown; unknown

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

### `buildpack-deps:scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:995bd7a28880b298f33a84cd5f1088882e66b9c2c795f50b5034911f262be67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139544725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c48e927c2896065cf4c6aa6f0c467b25d89da10ce42df20ee198bddce6cbb10`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f71bb791d26a4189c3a956df1abf3f0a0d661ce0d2e3143516a36ad6b66e6`  
		Last Modified: Tue, 29 Sep 2026 00:27:17 GMT  
		Size: 66.7 MB (66705357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:42836003b63a5f1b42dfa2ac7a4c33adfb214ff7e339d3037d77bb2c25a9731a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7775234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db237fbf99725a82f039a6009f62ef06cfda8f353bb75e8070bb13e5dd011b45`

```dockerfile
```

-	Layers:
	-	`sha256:005f6bb67434907839cb49892f0dc315895dc69ff31b56aa8b9256b19bace9f1`  
		Last Modified: Tue, 29 Sep 2026 00:27:08 GMT  
		Size: 7.8 MB (7767620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:666ae7e1d7b34af0319f84b7a7b0243878c273de78f7190a537fdc416f717847`  
		Last Modified: Tue, 29 Sep 2026 00:27:05 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; s390x

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

### `buildpack-deps:scm` - unknown; unknown

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
