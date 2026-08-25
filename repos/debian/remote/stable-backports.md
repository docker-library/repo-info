## `debian:stable-backports`

```console
$ docker pull debian@sha256:e7ab82670175bdfee322da2ed2dcd091208a65e80ca318f50192610a5d403742
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:112f8a87253d6e6694b577e413775bbe2b9b679ecf6c6a81462ca6b6558b8ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49338051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f87de39b3040548bb5646a549edeb698245e722d2994af389796d4bad285e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:49 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:21267a18de018d8b351b7a425b5c650a99344ad023e1af8ecf0a9d6d31c3cb37`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7431ac28c407fd12619b330fe2b5bf1565ef0eb3632496d17ba06750a2c48fac`  
		Last Modified: Tue, 25 Aug 2026 00:15:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:90173ef38f57d3d72e0c7f4d4246f38ee7f36713ab2cedb8dab4e7c93a1f6e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe649ff1e05a10403fa98f36e3e01a9d84a74859723f270f162c91fa1ba6e32`

```dockerfile
```

-	Layers:
	-	`sha256:6b66def6683e97045c3d1da980541a1b664e4ded0baaa87716975f021b93d227`  
		Last Modified: Tue, 25 Aug 2026 00:15:56 GMT  
		Size: 3.2 MB (3175969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ace2a088a64c2844a03d640c3ed3ddf8eff048a7cbb488acf6bb7495ba6a1f4b`  
		Last Modified: Tue, 25 Aug 2026 00:15:56 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:430a91f90ecd5ea4f87409db5a563c2b000e878dfeb048399123cf1cb2085f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47489849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24540a475cee02c3b0b1c784ba1dedfcdb09ba8f99dbaa7977ef6bb32c86b9f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:14:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c3935f586718b5f25bd23b88b9d8c4aff28ba4d519362b7a899c0d94754e0ada`  
		Last Modified: Tue, 04 Aug 2026 23:51:15 GMT  
		Size: 47.5 MB (47489627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2adbc658ff979a030d5a7073eb744b57f037b1d6eee4f2eb8fec10dc8fe4751e`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cf97d6735d387297210d8cb8e87faac540db6c4c4cd542f846fedfd89bff98fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3372a7be6a5d3f9b35e0b1acdb8aaa85398a33218b9a24fd23bd2be2537535a`

```dockerfile
```

-	Layers:
	-	`sha256:3af2d7a3a21b7790d4d37a1e1aa6fcb36c14c81ad30818c51f2ffcd9f96213eb`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a02d8245d743377c6ce5e46b1461e1a907870e1479db038e132eab63c228607`  
		Last Modified: Wed, 05 Aug 2026 00:14:37 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ad0b4ab82141436dba74bf536939f07382e6b01edd0220313749978f85f745f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45764277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4e736581961b7434c825e2a97737a8640da539facb79cb94f20d7930d7ac7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b63e1da3b98d0b0f59ac4aa16093c45da7db47127c8fbd2bc532e40783a3dcf`  
		Last Modified: Mon, 24 Aug 2026 23:20:42 GMT  
		Size: 45.8 MB (45764056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7bffdb9fc9041bc9e19cb12ac566decbc5d3a1a4d004f62f65b259c304b4bd`  
		Last Modified: Tue, 25 Aug 2026 00:15:21 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bed2d83ee9acabd466b92954fba405551cb2dc0a05c8aaf7fb369656f74f46ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3de1341f7f67f5bc369e0a6da66f21cf88d83d482698f52d74e56f78fea6ebb`

```dockerfile
```

-	Layers:
	-	`sha256:7059b2cbea1756df2ffc345d9d62c5ee10598b0db5aad00a99de86d049190194`  
		Last Modified: Tue, 25 Aug 2026 00:15:21 GMT  
		Size: 3.2 MB (3177343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1cf7d29a700f3fa9594766448ebd4a018974ca21af314cb5e396441ad356d67`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:705f5b5d90725c6e5eaf0216c92774caaf0583e62881176a3ea8f2471cbcc1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49705076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd13558e3b2c791e1bb2be9b1a97c7026b038bd6ff50d6a353720777a3f44f9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:21 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ae72a46cc255fceffec50296e43a871d478aa35ebb7beb568f214c0b9d3051f6`  
		Last Modified: Mon, 24 Aug 2026 23:21:07 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c725ff52349e378aae55b0622ecf98c99220af4191d87d5acfbbe4185035fa`  
		Last Modified: Tue, 25 Aug 2026 00:15:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:37346d3e2ebfe264723bc2f89f56bd1a5d1b0f907831817a52e284d8f3989709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:122556e78c7e5f77c2d95a79815fb663ba709269779ec5fee52de075e3619616`

```dockerfile
```

-	Layers:
	-	`sha256:28facda47cf5b603a86a6a27f73b98dba15a0466831a468f279f1fe0fe4a2990`  
		Last Modified: Tue, 25 Aug 2026 00:15:28 GMT  
		Size: 3.2 MB (3176813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccc97f048ce01987d435ed3d8827d0cbb6c7259402fe984f8b0b675095a35214`  
		Last Modified: Tue, 25 Aug 2026 00:15:28 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1f1e453f4a95bf45e237578da59b6052916040a9c53ab4e915296b543ff4d983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5c4d7ac78c282e52f7583f9902e98f7e27bac45b71291eb3ca3bbe87dd530f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 00:15:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:853ce8716d163f15733b2ae2d95fe044e47d10028f2cd815c23587c2c764212d`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 50.8 MB (50831173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d85055d02ba68048abff36c8f56cecc34fd2b1e08646bb4ee2b78f44ee49c3`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4e8efdaec0183f0ec687cabd9d7ca5810776c217940a1ee63afefab60339bb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386289490d2ae5d38dfed42a74297dee673a015ad53cebda957807bb30854b1d`

```dockerfile
```

-	Layers:
	-	`sha256:b9338c6c3d48643185db54eefa72574823daee67275c54ba70fffa95ea652283`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab124cdcd47f38ba7acca221d19b2cae4b1286447657c0c4a12d01f7eba5908`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:a3f08187ab30a49d1973c913ddfd87a9ff906baeea801352df800bfb7d734a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53133826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb69169fc594f7ba265b85b7e00403495b5c02c80932ef8308ceb6476431ce75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1785715200'
# Wed, 05 Aug 2026 03:51:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2163fd38ae2045383c0de2aa5e2c1805326c7cfad7756b6a3e0e1166a8bb95d7`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d4bcadf1dbbf440ad654bfa6d60e25f35d542c2eefca034094b4fe14c862e6`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:476fb5ccafd9287e57ffd45d6bc31d4838be860d066430d285f117c7401e66f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a78e2f110ca1235a5f23e76445c45895c5d064c8f240faff4d6b9606417dcc9`

```dockerfile
```

-	Layers:
	-	`sha256:36c2ec1a495d5b4e8a6729fc33b549ca48cb4f96dd0e3ce77780d0d9ccd0181f`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 3.2 MB (3174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd3e5c8c7c931d31b5d870b4ec5e9d6bf79b8c07a0fd33a9130b7c0e629ba6`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:cea8dc117fd1605de6860a179899b403bc41d20cb5d881992deefdeb3b17dbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47831108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d489a786c45768f3ded894b51e0a16754b426da6afdb0a3038876a28af8e05d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:17:05 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0f23410ecc995cfb6eaad60c83a35cf1e4789fbcc9f012220a5bf6ce5a974eac`  
		Last Modified: Mon, 24 Aug 2026 23:29:27 GMT  
		Size: 47.8 MB (47830884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efe915bff9a31fadd837604876833015cefc3d68720cf21919f133cd7a6f72b`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:65e245be7809f7c0141ae77206b1fd545517346cfedef67d55a68e3fa7f9f9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ecffbf377f35c80a2711a4ec9e1cdd39267423fb97dd93844c642d3af16dab`

```dockerfile
```

-	Layers:
	-	`sha256:b1a261d77c2ec74939b3fe2d5f6b366655b79c7c14ee2c141df179f2db270480`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 3.2 MB (3168294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df10b67d4fbfb7428e5365ccd2e5fb12730a9dced2531c2ca96e69cc7eb61f5f`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:8ada3dc4187110f9bb983e5754b2b68f1d727ada7651cb91deef7f7a1ac4cf61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49406919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b6cb0225999f49699fdf444acde91ec15ff60fb335cde8a999a9473ded666f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:14:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b83c8d25a70ed92472a106b62d2cea8f97af1b349b7554836d46eb7bb9f6e6f5`  
		Last Modified: Mon, 24 Aug 2026 23:19:47 GMT  
		Size: 49.4 MB (49406696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c4e55cd0a904918d04db279b421d2c94b1fc26a7f726f832191c693e402125`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e0b3d96d6a3bacd38b018b6ead97daeb706fecd1eff98ab8c764e12369b6825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2c8a9d8352b6e04d4d9630ff37679fbcd09c25fb684d55fbd620767d15b215`

```dockerfile
```

-	Layers:
	-	`sha256:c8b7effc8d9bd6507553fd7718a58d16df72a7ad7d324c6b5edd4a13b35ee9b4`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 3.2 MB (3177416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141a003df6d3472e1be128443eed0e32fea87b41e392d0104c4efd0b8a33d3f2`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
