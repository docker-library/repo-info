## `debian:stable-backports`

```console
$ docker pull debian@sha256:03723759e77a42a22bd023dcceefdc1f5baa71c975635cfaba7a015047877060
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
$ docker pull debian@sha256:9535d7d75cd2da9c214eabfbcb8cab14214fc00e6833772dd00171901943b4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47514181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e6c4d1d10074a458e08e7150ac66328ca15ad0b89ded3a706e7f626ba56a6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1f6f70bd03aa97ef324fd8b807495581b78f700a3645ca2322fcc4a995343091`  
		Last Modified: Mon, 24 Aug 2026 23:19:50 GMT  
		Size: 47.5 MB (47513960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f0075dba60407403e1b90ed4c347a02de54fd5ed26c29e3288d091d7fbe715`  
		Last Modified: Tue, 25 Aug 2026 00:15:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:013783eec6b37e6b75fb314c527d7705bdd59ad9265002498817c51510e76ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c42ffbce26a731c6eea9ab88ef6a66e92a6cac2c44f2a51fb6532e0b698168`

```dockerfile
```

-	Layers:
	-	`sha256:8d58d293a78627e225526e26e5c64e2b2470d7512c3ccbee896c5cbc55264c41`  
		Last Modified: Tue, 25 Aug 2026 00:15:14 GMT  
		Size: 3.2 MB (3178906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d396119344d3599a1cad033cac25a3ec3175451d519333abd7a66ad11661c9b7`  
		Last Modified: Tue, 25 Aug 2026 00:15:14 GMT  
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
$ docker pull debian@sha256:9f158cd7f1f43fd5d7af622542922560a5df9885890df54078b747f4929e95d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50849806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961c119f120fc72672d3f99e5f8f44a833afd6ad21257b52e2ee3e871fc9a8f5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:53 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:12a62620a060236e0b28d0b61fa8bea71228e9ac710485a1305c6bc799658fcd`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 50.8 MB (50849584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf789d6f6b55dd72f5bc6ecfec60a019188d6333ac573c11f9453e6ba6fc33ff`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:234146e05dbc6ba8b2d4f487f0cbab0265eece3b79d0a65c6e6b4246d56dc414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e55ca127a80a85321d77ae1e2c0f981e315af614f2a4f36ae84a3bc4098606b`

```dockerfile
```

-	Layers:
	-	`sha256:96ca5a3e270816a399a38a6b1a003a4a1084acb0c04142d6b167c55e73322e8a`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 3.2 MB (3173171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d46c5b502f9a8677fc31a3e1b718a1bed4f27c3023044874717f3c6775814cd5`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7464b061bf1e9170beef669f3743102296efe10915889fc18382eb10801b0c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53164504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff3f2eccffa1e1dffe8c01bef9cccf510691141ba8b36576039fc720aa8ca05`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:14:31 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5d8d2b5c032982f41e2648f838b75ddeb6c6b10a296c4d5ec26dcf397f20a49e`  
		Last Modified: Mon, 24 Aug 2026 23:21:18 GMT  
		Size: 53.2 MB (53164281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0357623e59284bb62857d2ad39478f6d24bbebb6352984987108263aaefda026`  
		Last Modified: Tue, 25 Aug 2026 00:14:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:57b40b4eb2e7242762b64f49034b7288469136ef9ea6769514a77718dbf14ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806df403cd8564ab3946c8452d72708a1a9bbfe5acf4c02fd63daf5c6ae6a4d5`

```dockerfile
```

-	Layers:
	-	`sha256:2d5039ab161907f9ada2a5a2425997a10ab39e3b4ea8eca9dee5ffbb34f6ecb9`  
		Last Modified: Tue, 25 Aug 2026 00:14:42 GMT  
		Size: 3.2 MB (3179482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:458fefdf7c426ed1097f8aad3d72b5f7192f7f7415e11db158faff8e3c0d35c5`  
		Last Modified: Tue, 25 Aug 2026 00:14:42 GMT  
		Size: 5.8 KB (5810 bytes)  
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
