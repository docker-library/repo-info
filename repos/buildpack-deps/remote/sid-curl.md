## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:852579a399d755d31132ef9678daa07ab1fd13ac58bfef105b64cb0a4824a721
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
$ docker pull buildpack-deps@sha256:66e1206bd4a48a02eecbdba65b28418761bcaf43a53f723244fba888be94b8b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78330270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7367cb20dca0068d0d8a60b1002343652229d46dad1c9667058ca616e0c9d76b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:41:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ab2033ad8cb0b43749503cab4583da73f596c307f88d12356e5364054a51048e`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 49.8 MB (49810882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cb152ce5c1c6662afc71865c3c0f12a39934613621dc3486ec8765bd8de07c`  
		Last Modified: Tue, 06 Oct 2026 01:41:20 GMT  
		Size: 28.5 MB (28519388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f64136d3d0e7943ad17a89cf174afc56b4c08612ef939f440b8eb072e491b806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4078130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f1f4489e78a20878123dae27fa444440c53c841232f2a6c59d5bab11cc0bc3`

```dockerfile
```

-	Layers:
	-	`sha256:aa3dee748b6b055631e6261a4fbd16df6a56bfd18d486a33dc0fe0579b4d399c`  
		Last Modified: Tue, 06 Oct 2026 01:41:20 GMT  
		Size: 4.1 MB (4071369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bb7b1686a0c510ffc02fad7fe34c3479434c4cb19e3030c3775a745f0f80a7e`  
		Last Modified: Tue, 06 Oct 2026 01:41:19 GMT  
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
$ docker pull buildpack-deps@sha256:919dd25c339fb370f8878bf243210cd30a712add46f33ac3e3e38157acf1aab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76575653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d19a2cdf81632110d665ccf2ca3522e04d3b0966365d340b53f06bb8c7fbdf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:44:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d7a8bd199db3cdecd4fbba67b4222426a79183b07610eeae664329cc97e17682`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.1 MB (49137221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:480e0067139e9ff54d82d7e03b3297952566dc90fc9490e84b8dc619dc8393ed`  
		Last Modified: Tue, 06 Oct 2026 01:44:38 GMT  
		Size: 27.4 MB (27438432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2dcc50c25741d897039fde45ceb9e052c92cbfd9d09f8c53c24f208d31ac9b53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4081709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab920065d7909357f831890f5bb3e6fc925f27d945ab268ff89c63763e22854d`

```dockerfile
```

-	Layers:
	-	`sha256:e297be05d93693f5ee31017f2e42e2c119df399ecc271f187f7d86320ad9a69b`  
		Last Modified: Tue, 06 Oct 2026 01:44:38 GMT  
		Size: 4.1 MB (4074869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2074f7a530b679d07dea56ea14d9119c8ffb83cd382b94bc043f4f336411aa0`  
		Last Modified: Tue, 06 Oct 2026 01:44:37 GMT  
		Size: 6.8 KB (6840 bytes)  
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
$ docker pull buildpack-deps@sha256:9c9eb2751e8664f572ae8ce58e6f76c23c0f6001c16848231819c34c2284601e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74613835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75eb487fc4112ded1a214c8cc7a7bac54310998515ba04e89b6dd8c21366d21`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1789689600'
# Thu, 24 Sep 2026 23:38:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:30538fc542fce7748e1323fdf450904ebd72fcb5f34f619b66a3656ae4ce3879`  
		Last Modified: Sat, 19 Sep 2026 03:56:13 GMT  
		Size: 47.1 MB (47130502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1272711aeb3fc61c61c8b0b4e85760de8f59819af3b5ec3eec6b383bd9c9732e`  
		Last Modified: Thu, 24 Sep 2026 23:40:42 GMT  
		Size: 27.5 MB (27483333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4854e4859cf4791a7998cef3d1e1666a6d767c1f209dd4e47c6292fae11649e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4080286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebcbb6b156f29708dcc22edff78abc3ba20929223b0110813c41a287841939d`

```dockerfile
```

-	Layers:
	-	`sha256:99eae90943d2892f0929782d1be95b5c2f33325989dc219db03fa44e050ecef1`  
		Last Modified: Thu, 24 Sep 2026 23:40:38 GMT  
		Size: 4.1 MB (4073493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:072ccc3ed99c9b3be85ea0b19dcfbbbcaeee9a91d992fcccde2306eaa7217cf6`  
		Last Modified: Thu, 24 Sep 2026 23:40:36 GMT  
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
