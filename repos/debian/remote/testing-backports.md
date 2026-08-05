## `debian:testing-backports`

```console
$ docker pull debian@sha256:e309bf0d405d21eb5f352d28dd8e51b7bf37f10c8e3850e35783f573ac467aff
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:6d47613139388680082c53cec7b43cea800d0b0ca660a6b9ad9de7ea3a0416ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49331925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b3ebab4dbc9d9c2cb13893d0758af4acd104d1814ce7b1624159941dc8256c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:335deb63ddb10461aefcb1d844c9836be66643e839c282397fa549c842fd8c23`  
		Last Modified: Tue, 04 Aug 2026 23:52:48 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90341acc2268fe78fb87b1a0599189fb94e3935536ab01a8aad7f2f8dd5f60d9`  
		Last Modified: Wed, 05 Aug 2026 00:15:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:685cb3bf1cb0baf39779bb5333d4fc3ba991101adfe3d56a6857b6a560994f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9b12d0a743adcec67e798ee61da071a1ba0a74c855443130223398bc557375`

```dockerfile
```

-	Layers:
	-	`sha256:51ec98835745bcd444548ec5d681765543a48ddf6563950d94234a494ada8989`  
		Last Modified: Wed, 05 Aug 2026 00:15:20 GMT  
		Size: 3.2 MB (3194281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42fc4c53d568900dd2264745a65dff756c254bc238f353f22b8981ce50fa4ca6`  
		Last Modified: Wed, 05 Aug 2026 00:15:20 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a2ed119cd7a4537b74e5b6191ddc402a41135f9bb12de470a28c04631b848544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46228271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c17f35b579e257b2fac57b082d484b2b5fdbe77ade9f8a0cf2fe072dd9e92c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:15:11 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:84e7af6af687b346c79d0ca5577b3c4b2a5f18abe7e5c87814939a6147aa1957`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681cc2706668e78d0c9326a17a81e8986a5a188899f931f55241ad26fe9d9fa3`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7572a6bc6797777782568d31468adb1617bf3430a6fff210457db96b86015943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bbdbd65ba683220bfc2166d7a23dbaadd25e4b9dcc3de9dc5d5a86ce03de16`

```dockerfile
```

-	Layers:
	-	`sha256:5fec3134dc7b5e8032c8455b840269976bb57a30d21658ee3e990d6276753fbb`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 3.2 MB (3195808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1572f765d520eabc428fbc16e5df22e27d47d1f9dfb4f7015fbbf7fe3d62f7b0`  
		Last Modified: Wed, 05 Aug 2026 00:15:17 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:99519cb7cd1d138cc32e592f678412cec539735370854c0d0dd8021f08344c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49361993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2a5fc4e612ff5a031c80bd089e999cdcef97923cad5342072fda22cdfaca44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:15:05 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:291a81b147f47dfaa9877aef45975f2528f58b1a05f86e4034c5f7c78c5cf832`  
		Last Modified: Tue, 04 Aug 2026 23:52:15 GMT  
		Size: 49.4 MB (49361771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044e926f1c7d0a71903d46f4229685a54749e4dc1935d4716429180694a58951`  
		Last Modified: Wed, 05 Aug 2026 00:15:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:dae6299e9d7d8920a6e984db7a21457ea542175e81ba609fbd4c5feb8bc5887d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0fec5247a9bc5254751dbfce9ea8385636fb088ec25a5b8e54a9e4376dcd58f`

```dockerfile
```

-	Layers:
	-	`sha256:fd0784bcd8fc1d78cb13a15cfd17f2abfa0e05b14693586a7ed246d47ebf5521`  
		Last Modified: Wed, 05 Aug 2026 00:15:12 GMT  
		Size: 3.2 MB (3199006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b9c5b34ffd2ed9b4d2eb3661356564ca1910e4c91c7f23d5b1d211a91b634e4`  
		Last Modified: Wed, 05 Aug 2026 00:15:12 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:e694519d4ee6e735a0471511d4d55c0510b62c090e544d57ba13d5b2fb8a759c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6030756df7315a24d830a337d1fc655a81de9d5eecd3459ffe53de74c3ee310a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:15:41 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e81e7765b059fde13f1a2f82cc061535670382b46f819b7059ea4bf04245e09b`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefd07453abcc369265e2f7ae668999a415c05df9d086c36467a06d34d0be945`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0fb92eb528c18a8fb0f4f22970b09eabfa763e31c3cb2015df971d73df0ace0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055f21e03aa2e0c3fe8f48a2971954a61c6b41f15c6c78fd91aec047c5ffaf45`

```dockerfile
```

-	Layers:
	-	`sha256:6a16ec85da03c3553d49b6c92297c6f1ad3b861127c45ac9f25ea0a39a5f6a11`  
		Last Modified: Wed, 05 Aug 2026 00:15:48 GMT  
		Size: 3.2 MB (3191378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c363a7055fb73189e42b3c8312dde165e98cb99e736423212d6b9f011c907b6`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:aa17fd9ab51ec7fd00ce0b1fe3e01364e7cc7eb99e2dc7eca28cdf822a5564ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54675245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c062101f2d729a43b1519b9a8675a71e350dc90b9c69c792930900ca5ffc65c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 03:51:42 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b3c052ddbda2f7849811aa46e2373f6622480959099a141a9275a23e79947523`  
		Last Modified: Tue, 04 Aug 2026 23:52:46 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7334fd17060face260e678fffee0eed20046edcb441f9798af804b04746e91`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8c051a573cc901f8af04a7e966b20a395e92a473d64decf8e77fcc035170ec56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3203867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80888b256bf7e05d891e43464f923f6e8beda37be7541b0f8e02724c71995e5`

```dockerfile
```

-	Layers:
	-	`sha256:31ba3646eed51ffa390235af9a5e150f0a18e6e138f5d8dd13ad79500676d49c`  
		Last Modified: Wed, 05 Aug 2026 03:52:04 GMT  
		Size: 3.2 MB (3198047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45a07d151fc13b1d3b7f1333c813fefc0127015480a3562ef1b8b41ed2ad9ab`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:9b2d5057b873c06bd55b7cc2f81d2e30dda845d67951b3cc9b8d14953d77911b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47433269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1359cba7e1b647e26e5a7058b97874c478991b0d5c92311bf34f725e5effb292`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 09:34:19 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5b2b0866a0c8a87eba202fcf04bd5cb86181e3e538067dc6d7309c6e4d276b29`  
		Last Modified: Wed, 05 Aug 2026 00:52:21 GMT  
		Size: 47.4 MB (47433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b420d578940f0a3a867d8bf5078a6fed2d3f81a4d4467cdd1c7c222abafd323`  
		Last Modified: Wed, 05 Aug 2026 09:35:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4728a80b1464efcab0fac3e022ce964e0c408f3426e92c3965c4a48a964a6bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef78960fdc69c99120bb06a6f94b7f060fd85508a79f0875dd0d63815da5dc01`

```dockerfile
```

-	Layers:
	-	`sha256:3dda46b53da2151383bf03667391924814678eb4716127ea318d28e1e23d9cc5`  
		Last Modified: Wed, 05 Aug 2026 09:35:14 GMT  
		Size: 3.2 MB (3186645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b868726e6b1c2ee73f3290a4472ed1e1ecf99dbb4f9cc87fc489b4f443072fc`  
		Last Modified: Wed, 05 Aug 2026 09:35:13 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:ae233ae34322785d72c0ac1489e46805a78da01218c23401252a6c9f6f0099aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49078707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ab8bb3d6a9b57b1407d26d8a9ee94d3035ad7b1264d8c412cd4b612aa38947`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:14:24 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:52238ad230b64f6771698113bf11eb99d580b6c0331c6fbe593ed063507e59c3`  
		Last Modified: Tue, 04 Aug 2026 23:51:14 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e4eb6a7813061baa652377da152a33d24c7a10efe8325d106fbb3d6f5e9982`  
		Last Modified: Wed, 05 Aug 2026 00:14:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2df6ba85217a76460ec3a4ecf41b2d2df0840136422dc97a05c23bc780144876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e27f0ccd752a26c4eb61d41d0ef4bd3878110b8a92c06418bc1a1effb00d88`

```dockerfile
```

-	Layers:
	-	`sha256:1801436045d0d7529dc5b43bb311cc57394b627a8c559bda30eafe5872d7f044`  
		Last Modified: Wed, 05 Aug 2026 00:14:36 GMT  
		Size: 3.2 MB (3195677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6efdbf93894bc16fba19c30014f751df18fceec1a75dfda0d7a0c1977d53b33`  
		Last Modified: Wed, 05 Aug 2026 00:14:36 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
