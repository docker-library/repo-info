## `debian:testing-backports`

```console
$ docker pull debian@sha256:8bd18d1e2ff82ebc2e1d8740b0e864cf5f586da2842ab397c78ba166ef0540a9
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
$ docker pull debian@sha256:9a2513de443fb7ad353671679ee56e838e4039510ea387a3d71291b533b0754d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54187619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6de484e0e499c727ba427da801e77b322bbe24453ac5ba1b9030dc76fe3df50`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c4bbcdef50229f306b20d248290cf496460d990fdb6d2f6bbf320c123de65229`  
		Last Modified: Tue, 14 Jul 2026 00:15:12 GMT  
		Size: 54.2 MB (54187398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e51bef1b927663ff0795fd9b9a968f806bbfc77debb8f6fc9db97c58372f6b2`  
		Last Modified: Tue, 14 Jul 2026 01:15:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:453b4e53ca0b5f1768a5d22b5b32ef33d57185b664ba4f8a89ece08edf2c031c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ec51c576568ac23f051c3aa8a82541b9a74fc6bfe1874ac972bf08858807dd`

```dockerfile
```

-	Layers:
	-	`sha256:900df9afa99f2a78c7dd65bb38e584962013f0180d6e9510829b7e2085447dd2`  
		Last Modified: Tue, 14 Jul 2026 01:15:25 GMT  
		Size: 3.2 MB (3153488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0dad477776dcc68714c8be0fecc0c0982cef6d593bb6e694dee7b5d73e69010`  
		Last Modified: Tue, 14 Jul 2026 01:15:25 GMT  
		Size: 5.8 KB (5819 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:b91a711d06b45de8793406ebf03efcdaf50a9c79f51fe47008b7dfe304d13417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46974691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ddea1040e644f5b6ccecb60bf257e84e8165e87821ce2b2103226182ebd288`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:19:06 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8a2ab716bd8d6cebb8ad2e0fe787a7e74f8ead3d8eb0e664baab5ae057173cc5`  
		Last Modified: Tue, 14 Jul 2026 00:25:17 GMT  
		Size: 47.0 MB (46974470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ead1d72af6706c44109663fa88b46b8e876aaebe7b2682b8664c2f77c7516d`  
		Last Modified: Tue, 14 Jul 2026 01:19:59 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1c16dfdb6bda74c6f1e7962bd0d175b6c6a3e22198aea703dae33b5a0decca8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bee9fbaee242a1ce442911427760734a4006bd0318305f575d2883ee335489d`

```dockerfile
```

-	Layers:
	-	`sha256:426f7785cf42c5886458e2a5b335ed776e0ce45542805bcc4a906fd97cdfe475`  
		Last Modified: Tue, 14 Jul 2026 01:20:00 GMT  
		Size: 3.1 MB (3141491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30060492ac77c8d3632266e45cf4690514fbed898ad7d4588e07066112d2eef1`  
		Last Modified: Tue, 14 Jul 2026 01:19:59 GMT  
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
