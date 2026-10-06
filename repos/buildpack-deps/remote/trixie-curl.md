## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:c0ecfde337244a7eb66c92b8f2b6aa4cfcac0ba3619952e8dad27750c550b41e
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
$ docker pull buildpack-deps@sha256:8b66b3d37f3ef1d17c46122e302e6783a11b660ad4852560a715b55b24f7970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973c37b264c3785e7e16a3b15a801795cf268d7625c1884d2916595ae868583b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:69d16c5f90f9c21a5be21b8ac21fd57222da2d46bd56f770a9c11bfed77f0de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39375d2cfd928a89cd7f6ef4f037d479f0a29e48fa788ac40fa8a959ebf08298`

```dockerfile
```

-	Layers:
	-	`sha256:fbe57ee063e30be7e69b8ae5c4b0ef8f400a67542b2708e5a2db9fe261b0874e`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 4.1 MB (4130112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b4cfd39934ef67703650d1b76d86bbb2b94682a65da2e8488fb852717ed3e2`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 7.1 KB (7086 bytes)  
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
$ docker pull buildpack-deps@sha256:8e4f1d410555d6b41507330a2dd47811b771a1c3ba958afc00a8a54beb95d822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74800085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1407d703a37d1e7758fc94d06ff436ea89ab61149dc0c239cde6af09f1c26165`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:45475b60085a7c939c69f536e1165d335375629ea3fac27da30ffb449b9816bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef87fcfe64278010b3a4ba2c55c13e91d7eca6d6a517cf45634a30338ac891c`

```dockerfile
```

-	Layers:
	-	`sha256:172513778135ae818913cb2d3e57f968579c7e22fe977417532a132b836924f4`  
		Last Modified: Tue, 06 Oct 2026 01:44:52 GMT  
		Size: 4.1 MB (4131017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1716ca759e8420a7b2a6c83aec1124350a9ce788f5f536c5a31655ab6fc96699`  
		Last Modified: Tue, 06 Oct 2026 01:44:52 GMT  
		Size: 7.2 KB (7178 bytes)  
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
$ docker pull buildpack-deps@sha256:434dc87ada675da32b1778c98523ad98ec1ce5782ac84e7ac06e59d02a39996d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76274179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44a2cf5336d7b843b726fa077f20af8288514e2cda14c9e92dd0c6c578c6e2b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
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

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:38652f12b094c6d1f69d80c0802dec5284103d3698202ad0cd8ddfa447f68583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671c9cffa3bd4f7c987bd1b682a2b45d7ca55ca15c8ea73cd98d61ec28d8a71a`

```dockerfile
```

-	Layers:
	-	`sha256:a32c6f41dee128baccabcd25730f67005f568ea873ae686ac2c3b95654f576ec`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 4.1 MB (4131522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36893a881fc1d20a4f71cffa9de98e198a9f061d237ac479398d502ae4af7481`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
