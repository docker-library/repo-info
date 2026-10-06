## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:d7c1470a0c38b380878ad38fef2b2200f07d05d0301df495065f000e8b7656b9
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
$ docker pull buildpack-deps@sha256:8fa2a2e2a546ab1584716d003e4cc30455d9263c3e53d18fe44b890db46a2ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71502368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072a5229dcdd79b479904f50b74ef8629f5ceb1f90613316058fab0bacb0cc62`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 01:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:62aebbfb3371202dadee4b4550328ad7d4941f4c7e0a83244a23e6a9d591f3e3`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5cd6d762c31d82600bb12f69f72d05f6a80fb1604fb9492fa9243d4bfffd0f`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 25.6 MB (25579374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15de9da601ec528f1b87602f2533a7905f157ad6721720229a0be02acf0c8c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7bdba4a186cb8408e6ba0a2b8a8377b8b3d6d228d95d511ddfecf39f904999`

```dockerfile
```

-	Layers:
	-	`sha256:816cb214c5ec8230c582984e01e317ff221d12df6ec31c79c18ed1304c0f75fc`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 4.1 MB (4083411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:440e5672688947c7e1a94b33d9f3271f341c3815c377f536e9aacc3e1f3b387d`  
		Last Modified: Sat, 19 Sep 2026 01:28:37 GMT  
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
$ docker pull buildpack-deps@sha256:b8a499121691e60538334ab665a63694837f7ba499352a276ea8329b076dfe69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80349983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cc17348114352ac8889f1dc1a078b608fd38bbf25e27f968aa3d6428109be4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c566546097e50ac1cd4cfe9c183ee89572445be5ac187c16a973e354c3ebe092`  
		Last Modified: Sat, 19 Sep 2026 00:49:58 GMT  
		Size: 29.6 MB (29597173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cc70f80bec56c4424dac05561e1e73ddb766cb981eda24f123fc9c6001899363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e462e56594c22d96e217e49a79c05956513db14aa5da0aefa5fd3f23b06c64`

```dockerfile
```

-	Layers:
	-	`sha256:a28ffb8bc697f140beea146d9042ead2f2dea9d998680618ddd53c2041852e23`  
		Last Modified: Sat, 19 Sep 2026 00:49:57 GMT  
		Size: 4.1 MB (4078765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05ae2cd21b73a6830b8ffafdf8655024532d4952af8211946dfbdaca0d39f8a`  
		Last Modified: Sat, 19 Sep 2026 00:49:57 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:86f9a1d69e4003d4b942b99651471609ff66289d73549103a5c0e3214d43f322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84731507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35dcc20b3c94d4df319601fc9aeac9c99d185be89ca371a16f3313ea1b73de2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 03:17:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1bee8b4a482e38c21d63246011ee76bdcda1a12e221d085c28b3dd02bd64c5e2`  
		Last Modified: Sat, 19 Sep 2026 00:04:25 GMT  
		Size: 54.3 MB (54324993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0fe18434c09d5b70155621fd15a8de09c82401907bad0453523969c19aef07`  
		Last Modified: Sat, 19 Sep 2026 03:17:27 GMT  
		Size: 30.4 MB (30406514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4f41cbff42db56f17e43b6e666c9e15d3e410de808e868375e32c37c52408140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef6a94a4c852b0be6694d97fb8c77755ac4216c0123ddedd5f3e7fde5605eb0`

```dockerfile
```

-	Layers:
	-	`sha256:675b073f777d90a281d7db0294c534cad3f265c197875d9a11b3df3aa25d4b94`  
		Last Modified: Sat, 19 Sep 2026 03:17:27 GMT  
		Size: 4.1 MB (4085866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9d6a2a6ca7824cb88d43d287213124cadf0a8f15300d26b5027524f65bc8387`  
		Last Modified: Sat, 19 Sep 2026 03:17:26 GMT  
		Size: 6.8 KB (6792 bytes)  
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
