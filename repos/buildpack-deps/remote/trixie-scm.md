## `buildpack-deps:trixie-scm`

```console
$ docker pull buildpack-deps@sha256:d4850751e438aed5a675c30861b95ce1be3547ff9e0243fdc645e7c1b976bb66
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
$ docker pull buildpack-deps@sha256:abe50ed87d1abd578b7a0d4cdec1e2ae88c4ff9c78646d8d757934e77cbe25c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142827259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b761cad0f732acd75c30a929a501c6f2011be9c061245dcefb91f3ad7d1fb5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:90df58e1e44eac77dd4ab3a4df32099d3630786276b32ddc56a0f5368c5bc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7785363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0769d0c356dc1ffa7dfd57ec16000fcfa64660e1a86c013c45707dcea00ac16`

```dockerfile
```

-	Layers:
	-	`sha256:010c9c9f82115947b1fcf1cfe72e6a42cca1efb5b74c1a05012cb944589c45c2`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 7.8 MB (7777786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d56cf8fe7ab58ce86b6639cbe9a39d8c98a40b23b50c6c11cd2e02f4d4f3388`  
		Last Modified: Sat, 19 Sep 2026 01:24:12 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d16e46b613852f7979d53888568474de5119b16ce4ffc64ccaf9ca4d3f73911e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137273186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8452afcf4778c3a4cddfaf2c850aee921e42e2cf6e3b23452d4dc5f5fd84203`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:06:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7883bba1880261bb735b0ae1907c6217f056d9337e457b5f39f0626bfbd6042f`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 47.5 MB (47547968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe25fce56af833068cdbc98fd420ef39db26d19ad81f4211651f4214fc99235`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 24.4 MB (24369977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87db95f8c8046fd4b258ba96e4229d1e12d08af37b0c0d50764ce09ded57a361`  
		Last Modified: Sat, 19 Sep 2026 02:07:14 GMT  
		Size: 65.4 MB (65355241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9b21e5e8a0f39cc31888cd3aada5bf2aa1e0d4b2e72abc45c535b852edbf142e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7786473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27f398fdf2281dcb161b89cb755e788084636569627a7d0d7c6a5fcd2d4dfa4`

```dockerfile
```

-	Layers:
	-	`sha256:f6f0a4f2375d4a45ab34b96e62f3e20ccc4f118c284836d7b91c29871de15d85`  
		Last Modified: Sat, 19 Sep 2026 02:07:13 GMT  
		Size: 7.8 MB (7778824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:566abdd334cb1930ea3202c38c25c87fe4a74bd893a0d37b1c5be0e37a52c0d0`  
		Last Modified: Sat, 19 Sep 2026 02:07:12 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:41e041010a68c74d532905179aaa84a59727eea7f337de5fce5bd9c810e618a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132198583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9321d377bb829d65d4a7cbea19e210686b7ca76014167ed8eab9f0886379b3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263bfac9f818f4ca845fc2fa75a1e1d26ab28688cfeac566c3195860cb82ae8`  
		Last Modified: Sat, 19 Sep 2026 01:28:39 GMT  
		Size: 23.6 MB (23641382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147b8adbb165d616a23eb3cfaefae1bbc21052b5d1f10a004e035c3229e1add3`  
		Last Modified: Sat, 19 Sep 2026 02:26:59 GMT  
		Size: 62.8 MB (62752934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b0918f3b59007f54cbf882ab489dee053f6a241053c05fbc1a78fec6113c9115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7785942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb14ab6d254a9b2d68b5b1b03fcb9edeaa9ce066ae7705df112dc16d5ffe0bf`

```dockerfile
```

-	Layers:
	-	`sha256:c5db3a6252f8ef95c5e8b4b67f64594f728aa72f1e8839b5be973ca46dda8ee3`  
		Last Modified: Sat, 19 Sep 2026 02:26:58 GMT  
		Size: 7.8 MB (7778293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:892969675135fefb0b091f1cda869790844fbbc95220a6bf3647d32b07abca7d`  
		Last Modified: Sat, 19 Sep 2026 02:26:57 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e26bfa70ca9cfdb5ca5956706d3edb8e3a7810e434fa9d00d89428fe13a35b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142410056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9dc2a04bec1fd6f8d7c9048ba7a5a9f05864d9828b5dddecab4e72c0436d9e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8e8da83c864eb92fd1ee6394d21aca21eb3604b9ce57f97aee6a4e2201fa3dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7792493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fcdea9284e668810a7eadb71b509960479d8d4235c758d0e26a2d0756c8612`

```dockerfile
```

-	Layers:
	-	`sha256:9c65742260f38788a0f8bc5e3c34c3685ab5e18fb3780f915e7f0ba99666e668`  
		Last Modified: Sat, 19 Sep 2026 01:31:43 GMT  
		Size: 7.8 MB (7784824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abac998761e83e23444a375177e971054dce7172d22685370378586ed9964734`  
		Last Modified: Sat, 19 Sep 2026 01:31:43 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8d58b3ac9085df026a12e3c307989fccef305b76ee29d37bab529d1cc88bcf4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147542793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787bbd7319f08315c24f74839d3f304168253b9d346a689e6140e3f7f7a898c8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3ce198802225dfc537f0d0b52760c61d9329c529b6ec7746f9b0be674d45c787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7781472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ef5ce9c337c08b7242e0a72c1bddca3194912681670b77022edcef326cb2c6`

```dockerfile
```

-	Layers:
	-	`sha256:e0c3186503f2d4d2d85732bbeccf3e94523179207311e9e6783b84194273116f`  
		Last Modified: Sat, 19 Sep 2026 01:35:57 GMT  
		Size: 7.8 MB (7773922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebe9680a65432b1aa1e0b17bc28d826889f00769009b9d7d65e47b1a05d51e37`  
		Last Modified: Sat, 19 Sep 2026 01:35:57 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:24dfc6eaa8df0ab544e1298f573cf1ca82faac0ac79fc8b4f0e77673c315cc52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153306585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f04113669de0db70c68c1aa824fde40768da420f33e2898d04849f14d32285`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6ec3803d13945ab0f3d05b525305976dab5afcc9d2bd171948735846ea2c6cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7792522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce0c011378ca9fd8a0679c3539cb90d531ca5cb5aacbfbffb647849b963a6da`

```dockerfile
```

-	Layers:
	-	`sha256:3dff02dd47019a744faa5cb875c4b44f204b77372e019d3000d229d62ae36fc9`  
		Last Modified: Sat, 19 Sep 2026 09:08:05 GMT  
		Size: 7.8 MB (7784907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b20a00fc8768957047b398a3a7726b316fe9153fc3016388a3f84d605f649c1`  
		Last Modified: Sat, 19 Sep 2026 09:08:04 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:7d9285752318c192543e5431799c684c4d8e57be2693320e0123573f9937fc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142678709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d947e08e9006a2545594b10f800871cbef7bf59c7fbc0013ec290d71fdb00b41`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f54f156af689f62ff43a5325b8a96f05a7c4e149ed237d97f69cc0ce06971601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7770294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232c17f8a69eb4d8a9aa5ce2bb8f36bdf0c6d6bd9e145106b0b64c5ac1a98a91`

```dockerfile
```

-	Layers:
	-	`sha256:4a5a51f04d9ee82e70ba62a3464348c1661856c844a617e1548c6e06654fa9a4`  
		Last Modified: Sat, 29 Aug 2026 04:54:33 GMT  
		Size: 7.8 MB (7762679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60356150751fee00f6ae304b69ed4df5650886a822a37e5087d55f1b370cafce`  
		Last Modified: Sat, 29 Aug 2026 04:54:31 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b9e3017c32df062210cfe83d651c7142142038e0ef8bacdd02153b3d45b0b4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144920343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0bb7266ed392499beed354b7f4da1f6c53a2843d0cf4945613e0197fa9587b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:411a729757963a1c6b6f1afb59d413e5cba3a562449475e9db9c1a58c542c0f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7786276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83894eb45d498ffa4302451538c8dd40a06839a98c0bda1290f39d16e56a3f4b`

```dockerfile
```

-	Layers:
	-	`sha256:d4a2827716c2d875692c3dc135722e407a3757dab44a2c9ba79bee7fa860e390`  
		Last Modified: Sat, 19 Sep 2026 01:39:15 GMT  
		Size: 7.8 MB (7778699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76b95d4d8307482b09cc2f9f515045d0e64ebd7579f68ee2e790ee6324631b6d`  
		Last Modified: Sat, 19 Sep 2026 01:39:15 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
