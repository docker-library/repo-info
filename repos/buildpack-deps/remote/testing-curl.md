## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:43d75375e0def0d1442ddc050340628dda2cec7fd7054c3657552c1a8cef8b75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7855aaa701da55deafcc480effcc98803476fd53f16670a5d41cedf0b98bb38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77861081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8321d70177742dea6d5cd17835e009b8f08501bf1a516f92e06b5430d3a56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:50:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bd8d43e7ed1119cc0fb577edd0e8dbc8a8a2076a9517859aed9b78d6cbda98`  
		Last Modified: Tue, 25 Aug 2026 00:51:02 GMT  
		Size: 28.2 MB (28175566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ad25cf7d67abee6366e27c37d2174fe5cb0872f80bf9b315290505bbc9941940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffef1345e29c255908cc59295f344c409e4f3abac6d8f21c4996a8e4f285025`

```dockerfile
```

-	Layers:
	-	`sha256:1af37fc5aecc26e08eaf7ff2160bb9b15342363f5ef23577bce7c392079a7fa7`  
		Last Modified: Tue, 25 Aug 2026 00:51:01 GMT  
		Size: 4.1 MB (4093173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91652cd40215913be27f494d177d513bf941d9288e11efa5771d47eac8fbe999`  
		Last Modified: Tue, 25 Aug 2026 00:51:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5817755ff3ed0a90f78f4307a5871909878bb842cd11243567c2123cac30367e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71643421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61556e11013f8610e265e9a67be6f938a5caf28ebac6af791afad429ebdff6d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f678b1991f147b21923698c169a035c4b8f5ae61fbfd107e1529b3e1195c4fd6`  
		Last Modified: Tue, 04 Aug 2026 23:52:06 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2c043e171b59d1b04f4b3bd4e35dcac1f828054b7c09f0784b0589263e7af0`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 25.4 MB (25415373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bccd41853d6e81f285355d4a6a5946aaee89a14a4da043e53374cfb87ed40477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062a35d42e936cd29ae52ae4a72f230a1956b8fdae247269ff3ed3bac5b3cd27`

```dockerfile
```

-	Layers:
	-	`sha256:160b968e697b7d86013356694ee987b75b427c24b33cd8f24f8e7e2d4ab52d53`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 4.1 MB (4089473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bfbfde670e89a50af3341708c3b76bee1fb0a039d0e7fd1706c274bd702d32e`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:83505a55db079e5426ffb0c6e50d791c4bd13eaa86b5bc110a5fb656296d37cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76712697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e4671658e6ef9d6a9973d8c4dd4d86160465367d1d6e9024c6e151b1c87388`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a702c6fb3fd4756e63ac2330b9f8bba04992304d9055ee5f69bbfce2c342b3`  
		Last Modified: Tue, 25 Aug 2026 00:53:18 GMT  
		Size: 27.2 MB (27208778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3df0a9a7e452e2a35dda2e40c05657bc9a9fddeaeb88553300eefc7e8a5f2ad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4104164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15578928084f55a73cdcfb5076329578e04a2991710b6a22ffba714d61f2611`

```dockerfile
```

-	Layers:
	-	`sha256:becb12b9cf8d02b0fbdfcc3260e1ed9ee721e3a966e3caf13ab57737bbb10f26`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 4.1 MB (4097311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8368134bb126cec07b6a0eacd43e52784c3a4d6c636bfd445bb8b39cc7ae1f78`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:586ea77ae34f9835ee34c8491e88734249e934c834b100a5598d4ced9c84f1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79850867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcf111f2a3d69315b07305ae32641d848aa4091f768506b624382ce3710584d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc26a1bd9eef236063ae96676e9d68518efb5963a5840f9178265475cb7a14`  
		Last Modified: Wed, 05 Aug 2026 00:46:57 GMT  
		Size: 29.2 MB (29182177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b5e3ce6d2dcdeb3572f65b03a6180db4f17cdbf4ef68ad50228532a984df1b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca1580e734b23ce165727bd6adec3c4842eb1f69c8d0d5ad674c1d2c5a8b504`

```dockerfile
```

-	Layers:
	-	`sha256:dcee45617ced7b4dd0bd06fac83972b7e8d3a5ee47a5c6cd3e911774ef545bd3`  
		Last Modified: Wed, 05 Aug 2026 00:46:56 GMT  
		Size: 4.1 MB (4084830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d08aaadad6ab5a63116aa43b919ebbf530281cfe7e635ded60e15fde1e1cf5a4`  
		Last Modified: Wed, 05 Aug 2026 00:46:56 GMT  
		Size: 6.8 KB (6750 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d9517cd433f2026cb8fbf785f605c75890c4765b5eea60b4c22f1ee7f15c41be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84893502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249ad636c784194f2603e2d6a6101110711ffa50ea5d7786fa6a1392f82d65f4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:58bf9e1f9f35e2c6a73b629d77c34637db6af6dea128933949542988f5d743f4`  
		Last Modified: Tue, 04 Aug 2026 23:50:54 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a171b124e43c43ca353ba29ca6b343eecab8fdde9a0b04380503b3c469148c`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30218479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:461ec9f6c7f39a74b54b0b096ccd774cb473672148c37b6fe3e39d027e4fd416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4098727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf800a704f911d653078476b7ee40ce47c1276cd71f255eb5b8e18d15808ebd`

```dockerfile
```

-	Layers:
	-	`sha256:a2b0e6e5549ca4ae00bf59a371c132251cf6af2df2d725f16a934d1d8a2dd97b`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 4.1 MB (4091922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:850d769f7d91919854431a4ab003677707b8fb6a071a92ae7041bfbc3d57ef2d`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:dbaeba597b6d154af1a3e93f31cc7e6c325469f715807e7c216523c4197b4ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74769225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4c617e0d4d922a18a33773648b9cc855ffb65a931748e9b0b772082c30d2ca`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1785715200'
# Thu, 06 Aug 2026 19:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7d6264eb27b4d46a7e7575918f716988899968772092709a97545cd295d76edf`  
		Last Modified: Wed, 05 Aug 2026 00:42:45 GMT  
		Size: 47.4 MB (47433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84241173dc12785777bb63b4572ca91a744f6c1fd8520cf9461b3af0e1ea695c`  
		Last Modified: Thu, 06 Aug 2026 19:39:07 GMT  
		Size: 27.3 MB (27336178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7d21921ff768cff0d83c54b192bdb08551b1f88dd2baddf6783a9456a13a58e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac239b8bad6b63763a02bc953d7374c2bcf9d3a36aae24e1352a827f0538ffb9`

```dockerfile
```

-	Layers:
	-	`sha256:134b6ea94cb71b08ec320a2ff6214137c2de47d2e4473155ea97172a1b87ad91`  
		Last Modified: Thu, 06 Aug 2026 19:39:03 GMT  
		Size: 4.1 MB (4080364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967259659dbbd625f23fccca70575138af3822cdf4b199ef93ab861d6f49d0bd`  
		Last Modified: Thu, 06 Aug 2026 19:39:02 GMT  
		Size: 6.8 KB (6804 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:24c485d680c474d2a8f858a1a6ba96d47cdcec2b932fd23492b9c6baff2cc108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76841453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7bb58e022a5bbd439b1a0deba078ba0858975dbf9685f2dda0435ee82875f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 01:24:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:89aa4da0330231a8a129dbe1eded1750d074f8b5beae07f864cb9d5b9ce64feb`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 49.2 MB (49244053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1f67637999394f5ae66879fedfb4c975d0875fdc0f60458ceebf524c12d8c`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 27.6 MB (27597400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5b4cd6b7368fa4658fa1f498821226b723ec38a0b4d614e9a04f32c8da13e3d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90fcc44cf2dc83b1ccee5bfa551658cd6ea20201fac135b6945a8c8973ad24c0`

```dockerfile
```

-	Layers:
	-	`sha256:1f68d518a224ef6e7d4a43a9f98b99f1c319cf746856fb61a9e8541c988e683c`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 4.1 MB (4094530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8841da28d3b3c148a03e5aa9a22f94391eac2d8cdd1ee6f187fcd8e0173a327`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
