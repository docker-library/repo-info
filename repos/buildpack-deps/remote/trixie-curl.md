## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:1fc77c1cf7efed94e9a8311321dd7c3c4e7294d1d2ddabb4f63b8ffbebb79ccf
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

### `buildpack-deps:trixie-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6b6746b2f5123e35cf9df1a1160afa542783928a1f55c2162a1ebd2f71860b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75019787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42513bd7f06978de49e06f3a2fe50ee2871e7c7f56a09d294b96829c235cdaa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1da6dd4db2b0e7506864cfb132e9050f7d3a703c0b8175f3f1be781e1cb34d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3bfb3f6e905d71efd83811168e7ab965ae1872dfe5c3a107cb1dd1864e6e73`

```dockerfile
```

-	Layers:
	-	`sha256:b41e1130cce7ff942f6de8d11eab4947a21d22487a087a2fec3f5baa5bf22ba6`  
		Last Modified: Sat, 19 Sep 2026 00:45:13 GMT  
		Size: 4.1 MB (4130112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21450f548a31c5ee4086483f87bd6baa47ae8ff1c1086f7a28cd87fe931973e4`  
		Last Modified: Sat, 19 Sep 2026 00:45:13 GMT  
		Size: 7.1 KB (7084 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:464eab92a1915ce317c6bf66cfcd16e86455c4e1da442c6dfecd313951dfeea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71917945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851ada20ace329057cf35e5353533d6884b73e73e9cb0de92497160ec996afd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:946c8281c5ddf48600edaf8b56596ddde6b92430a2d398f2bff019e28c2cca0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4140260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51052e696860eee469e1db57ab9c7c99c0b735f24f50ad955d924a91cd9cbb38`

```dockerfile
```

-	Layers:
	-	`sha256:c3e2a91fada32dce3889c5d255293665452f2037a72f5386340bb6cb6fc6fa61`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 4.1 MB (4133102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:649df65872cce00c8c7736c75306388b624449b4779111583944e8b2f0e15abf`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:50e5143394825bd9c23d2ca2d594aba15df55479be4d0677eecd784e04a4bc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69445649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56a909720753d7fab2ecdcf9f37f18e5870bbbe551799bb21a3e2bfbebd0ecc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2bf9d0b5c831107db9e8e71675e21e58f4dbce331467edf59926ecae676d5eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cd40971c386db24ecd15fd46a217d97855f799b3052c8dc467989bccc6cf56`

```dockerfile
```

-	Layers:
	-	`sha256:9807ffd9a967e2d2329f78df9950e72f8f35dfcde79755cf17b7e9198efa850b`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 4.1 MB (4131613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2098018f3e463fec6765b8ffb2831d6a21206c0d3d46bf6945d015b67da89a5`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:be88f2bfb50d594f84868e65b3a167975cc71e92bb6e0435ce1849c0d5370fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74787502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c712c2a1bdbbc4b969d4c297f8e965482b7bdff4e90f961e0b7d17806e89c473`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8d0b4a3f27cf1a39f48bba91eb19979169c8dad7ae170ce73bfc8b2aac51024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f5108d4489e4d518004eb9e00c2242f0d87c8f8635e504ef985206a130780d`

```dockerfile
```

-	Layers:
	-	`sha256:c8d3b2ed30209e5c60f77298e0d95aa2ef885c1d9a45625a632513a0b2a6b0cb`  
		Last Modified: Sat, 19 Sep 2026 00:47:48 GMT  
		Size: 4.1 MB (4131017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3851aeb0c6235707704ac6a1bb078fb347b3205b0b2140200edb83f2cc1808`  
		Last Modified: Sat, 19 Sep 2026 00:47:48 GMT  
		Size: 7.2 KB (7177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:28f4b9aad5be5446fcd1b45bac1898e4c53acb5ca063943b3c87476fa9d8b2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77696415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f596db45b243aad16eaa2b5659ddb9be4f4529e37a745e3fee97abb3faa3e6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:800d71775bd554802a8e2d91c90f1fda094c83c7185499b24dadfedea94c1dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4134278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c33209c62adb40041b941b6f6a62a6cda6b9fd57838711d5b87c50252901c39`

```dockerfile
```

-	Layers:
	-	`sha256:406bf0f6992d640bedd52b1be71c6bff25baf4dade7db302e450c96fc4a901c4`  
		Last Modified: Sat, 19 Sep 2026 00:50:00 GMT  
		Size: 4.1 MB (4127220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb3411c8eda39bc3f08c740d3bcebe47c1edf2752a798516f006059c8c56bd8`  
		Last Modified: Sat, 19 Sep 2026 00:50:00 GMT  
		Size: 7.1 KB (7058 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c2f8c59d88cecf050d32ed5870b50dac955cd081a646841511f2492af07f3d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80217825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb12ec3860e7bb1eb65577f1dbb01333110a077aa0b6f7b11afd4843ce614da`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b5b6d40a483acd97635b297a02bda790ca9b066af5804be3ce14bf4d1371d692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96407a3aa963df11a9d419f1205d5dd444d16f8e339e7c5851ab0e1937afdfa4`

```dockerfile
```

-	Layers:
	-	`sha256:2c7240a595bebb52181c7b9edec64e936811fd2a153e895da54f85ca2fa4f26d`  
		Last Modified: Sat, 19 Sep 2026 03:17:40 GMT  
		Size: 4.1 MB (4133958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48c955c5c13040e091c826d78a8e4eec454024a15ee45b7b1e8cb4619de08b53`  
		Last Modified: Sat, 19 Sep 2026 03:17:40 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:3768561ef832a9666e471596f4949ed15c29768517f254c5b13de9e3a94beda8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72839368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3206872874a1247c9e4b0b9dcd7aae9d1a1956c5a25be33435bdb2887dc8d580`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cae58dfbafd9bd3ea87763161166e4e9eb4c0b4f783d6af6598d262de10a7803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4129745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f489b52ab680ada219bc39141f8410332ad8e58f3d6bd5a3fd23e56fbedc1f72`

```dockerfile
```

-	Layers:
	-	`sha256:40d3b3432a2d13322a3ce485685674a048f24b42dfb0ad56124ffb49b7793190`  
		Last Modified: Thu, 24 Sep 2026 23:44:13 GMT  
		Size: 4.1 MB (4122622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a30c5a5b3ba1d1622e2a23d4950fc76bb573718bee0bc39406e21162962f227`  
		Last Modified: Thu, 24 Sep 2026 23:44:12 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e293fb59c6c5c1e74f275f3bb9c6271e3a089be7fa2e4b3cceb845d4b8809daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76263215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efafe43961946deee38598adb5685da0701e4a4ad40cd5aab49e8cee807f1aea`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cd98370b6cdb513041373b8e30f2b3eb86a3fc287e08ecde853b55a93b928905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c124ccef60cc8d74c0f9a4b389dfec516cf53d0e2b0835593be45241ba1aa12`

```dockerfile
```

-	Layers:
	-	`sha256:f634bacd170909c255650b289344f785645fb330f9b9e911b4f442cfca1345cd`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 4.1 MB (4131522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52af8a23b93e26f994f7a0065a3bba39587e48ef842122403e754e61d57eb950`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
