## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:27410e2d15b8f0036970d913bc905a0926f67a1cbcb89d0f8143b7cfb282cdc8
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a409d8ac25a3760e621c422d62892b4400206a61e07bf3d11e72214f8820a6ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78348912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f23166a5b75d03dd364fb2faab708ee388d06bf95849c945aaf29a2256c5939`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:46:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec3259743e71d7217ad99e85762f43791ca8db5d63aafee15de35c7c98bffce`  
		Last Modified: Wed, 21 Oct 2026 00:46:27 GMT  
		Size: 28.5 MB (28528910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:396bbcd1fd05d5347946a64c86c70cef34b514a9d9275d3f597ca3bf72bb63e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4073450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd12aeb52773437f6e78911e15b8843239ad9410e0e0d54901bad0474a367c18`

```dockerfile
```

-	Layers:
	-	`sha256:dec94f9eb45d209dfdcd733beee3db067353429e395ad89811bc313f0b937a2e`  
		Last Modified: Wed, 21 Oct 2026 00:46:26 GMT  
		Size: 4.1 MB (4066689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86809163f6106f329fe7af16177f6cb2bcafc4e49bb7d9fa1942404930610608`  
		Last Modified: Wed, 21 Oct 2026 00:46:26 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0188773a340dd8afa768e67491c8d7577300f420d9c004210cf3f51f23fccc75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71609622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89c3ad4a3d33a925e5ee2e046741a2fe5d7fd28eeabfc40eae0411951d3d750`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 02:24:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:013cfa307d38f84d98e177e42a2eb6302161ed63a9ebe977844f734d310da242`  
		Last Modified: Tue, 06 Oct 2026 00:13:27 GMT  
		Size: 46.0 MB (46000354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d808064737f409e95000499e6f1f52019799296fcb0000ef1582f9fc878761`  
		Last Modified: Tue, 06 Oct 2026 02:24:44 GMT  
		Size: 25.6 MB (25609268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f9ee873935cf62cdff2cc849518c33f69deed1a70567ba9e42731a7a0a1839be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4079846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b0291733d0d2ca07b7829b3591e995aa94fe7d3eb7cb5c163e6e5fa9c474bd`

```dockerfile
```

-	Layers:
	-	`sha256:32bc67d023124c12469a2c4a916900de950e51ed99389cdd700efcb7e0bb780f`  
		Last Modified: Tue, 06 Oct 2026 02:24:43 GMT  
		Size: 4.1 MB (4073021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ef3c1676a554d86033cebe05949bd1cb58a542ac010d48a184441d143935a1b`  
		Last Modified: Tue, 06 Oct 2026 02:24:43 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9bd1bb3b970e99ff3a8585a44b3eb4df5143fef973b63da1e986b0e0a8610939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76589487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea5d4e5d1d20f388fca7970c89d40c4166b4f1704370ccfd3e95b57d2c68930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68634d59b4ff6ab10de196a616123b4ea6f0bd5427631286fe3cd8a56dd0d79`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 27.4 MB (27439000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4919747067352925cb70070a53ef04997fd752b93910d800e8108cb7871b12e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be2e1030c00881a56d2d15bff349a1434d9a2bc18696b054de0143fb7f3e9f`

```dockerfile
```

-	Layers:
	-	`sha256:0f17e739e6374186b2964fe9f704bde36652bcf8e2e42ada71e3272186d21325`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 4.1 MB (4070189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:854d5ac927ce642b5a7df1cfcfa74aa93d84181012a120597a05cf17b343e1ed`  
		Last Modified: Wed, 21 Oct 2026 00:49:49 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ba093016d456efb28fe445dca8f09926520eb7bb492f9e27c8462a6454d366cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80589208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e6090951e6708f40f87e8cf2501143383f78dcf93bf829b2972d99f144ce34`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f51072c81cd0f5a4e051bd63ee3e1601edf3ed454c1a11c864dbd63b2b9a6`  
		Last Modified: Tue, 06 Oct 2026 01:46:19 GMT  
		Size: 29.7 MB (29658780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:565805e636f07c5132d590abb5d3abcddcef7eed3bc68198b068d34b68fba4f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c87d50fe3a6a82f4ec91c4b09d277c854165cd02fc52ede849da6d189660516`

```dockerfile
```

-	Layers:
	-	`sha256:bf75a5e66de3dbeb6822d0489af4fceb1052eb996e561daa9e1345211d9102a3`  
		Last Modified: Tue, 06 Oct 2026 01:46:18 GMT  
		Size: 4.1 MB (4068376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71edba24a1829f22c4f9d497173dd431d29751dc0d87e791e4a9c680d76bb7b7`  
		Last Modified: Tue, 06 Oct 2026 01:46:18 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4811c91afb9acef78082c2beb9d0af57ed48912765e675db4e81148644ae219b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85012029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93703d3ff441b3bfd8491c60b153f964346bca085f8aa74b123218897263829d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:879c8c596683a589a22d88f106abb6c642b7746d92470d0e9281af7b3fd80325`  
		Last Modified: Tue, 06 Oct 2026 00:14:12 GMT  
		Size: 54.5 MB (54495654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0df2d209aa193e56269eb8c0a2f1b42c40850c0d5c42fd80f65047372deba0f`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30516375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ae0eb46dfefa22a8bdba356799e36370a487e9f682ea595a83abca3260327b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4082267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402d1ec3b64d4e0223c4321e6f99481e52dc1373e67209a5905f5c1e1a33b880`

```dockerfile
```

-	Layers:
	-	`sha256:b6f20495d2a8fbec4630615334a01268b11989a5827b9c02af79141f247420b7`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 4.1 MB (4075474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5c8b3d27356a616e59b8b9f7464e7798ff820708005529146da85a007e48d4f`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:56b3f6f4b26a601837263ed037895b6d53974e053bdea046c8a93a7db28b5e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74811410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5febb28a0c86e0437261df330b2f2e304955c5eb8a9fb3a666c3432840b353ca`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1791158400'
# Wed, 07 Oct 2026 20:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:48b1f7cdb9d7f8020200b8b2a5a7608c5fc31d5467487a49476fc34aac73ed96`  
		Last Modified: Tue, 06 Oct 2026 00:18:51 GMT  
		Size: 47.2 MB (47230578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b7403dbf18c16114ddf458ded16fb29bd66bbd5e72630cc90e48d103942a9e`  
		Last Modified: Wed, 07 Oct 2026 20:12:37 GMT  
		Size: 27.6 MB (27580832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:52842d716503a41526aae918c192c70626dd3b9a4de443efd1e00389f53c71ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4069894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f052ac287ad136a960bc26dc0f3e8e7d253fc939c8225ef84965ee67ad0a2444`

```dockerfile
```

-	Layers:
	-	`sha256:9f887a7dbe8764fc872b80598709d40e2b44b2ebfee5f1f035c78831c913f094`  
		Last Modified: Wed, 07 Oct 2026 20:12:33 GMT  
		Size: 4.1 MB (4063101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3617abc772f3b865d18ff75b0b761d221f631248d797f335de449ede4f04d855`  
		Last Modified: Wed, 07 Oct 2026 20:12:32 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7aa63934eb3fb99f5307db7c55d70463cd0ce2e573b7be61dfd6bff1a88447f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76728236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b295523473bd1b4dcb15dec9db3345aba2647c2b83cf3366f031bbd8a88fc13f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:57:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b2f5d15526d3e07e793acb96f627120833f3e67b1bf7484f7825bab71b4631b`  
		Last Modified: Tue, 06 Oct 2026 00:12:25 GMT  
		Size: 48.9 MB (48908288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c36cf8654b643c3e98b6fc8926d983a7223f6d9dd5e1d8168d58b157a5d8fc9`  
		Last Modified: Tue, 06 Oct 2026 01:57:41 GMT  
		Size: 27.8 MB (27819948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:44c0a56eb5f04043df23862ddba42a3bcafbde370f3ae9c1cabee37dc9fa4acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4079487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c450ace6ee183de78f0e5249732872314fbd7cba5b6d9b7f670e4c436cf29424`

```dockerfile
```

-	Layers:
	-	`sha256:570809e6770cfd76efec6f746fe7aca4d140f2a97bf39a675101e35d8cecc8bf`  
		Last Modified: Tue, 06 Oct 2026 01:57:41 GMT  
		Size: 4.1 MB (4072726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92fc59cc0d3307926488b22a0d64921d5a7dd44dfd01ab61e1f52551db025578`  
		Last Modified: Tue, 06 Oct 2026 01:57:41 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
