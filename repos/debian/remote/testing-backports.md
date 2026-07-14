## `debian:testing-backports`

```console
$ docker pull debian@sha256:98b9eea444da873c28fbccb91f85a73e5ed4638b6e47fa50e46643cd8181f5ac
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
$ docker pull debian@sha256:076182b2b6fdfc3d04097b911da7229dad9902d856fd6a280922d0bdc0421b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48865556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb56baed3a6e17300abbdaa4ebcd811828e02549019a1d4fee1cb6d34d561bdd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:16:10 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9e0242bb3da2f89ebd64e68593da72e3f7d5152d2413ce055d3ec9310ddb927a`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 48.9 MB (48865333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1ec1461faab4ddfdec5de1351356f56e5cccd12666d6f6b3195daf25fa37b0`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:86d401c5bfae62e783da770c937860538f13d37484e7cd4664127dbec4b9081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aafca60d32f9d21ae135c312b06022f15f3129248358f97e70d59045a4b9307`

```dockerfile
```

-	Layers:
	-	`sha256:fda12f3d4db0e1e3edb2559b10a625bff7dd3a315a796b8f0b2c1fed9fce3125`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 3.1 MB (3149995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85498fccad7ae9efca004708e7d4805635c632a0d48fd80b79b3c241ec73096b`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:18a5160fbd50799204ba3ec8abd0aa7d61db944ed4204881ad8a6d1f69df9306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45771721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918b0322063132d5f055b9b8421c32207ea8f37c25ba35a9c5af28ece9b814a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:15:30 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cd253cb0c77b59415694c8892e732e85cf59799ee1d7f375c966aefbb96c66c4`  
		Last Modified: Tue, 14 Jul 2026 00:14:55 GMT  
		Size: 45.8 MB (45771498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcd67c3fdc0d55046ea9cf138ad960cb0df9b921ddd3cb2ce894248ff999508`  
		Last Modified: Tue, 14 Jul 2026 01:15:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f28fb219a11ea8cc7dcfd4ea1507503c77825abae8d2d9512c38cfbbdc455308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c18a962e10b8f9004e98d708e39ca6a164db78242300bb47433d629c793134`

```dockerfile
```

-	Layers:
	-	`sha256:be716df69f1545e3764451e5c59567288c7dc6e5dd953df97c75d2d39072036d`  
		Last Modified: Tue, 14 Jul 2026 01:15:37 GMT  
		Size: 3.2 MB (3151357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98bd8423af96dc3f1c5b2590b052f825d442eda5ba401e1e80304aea24bc4eb2`  
		Last Modified: Tue, 14 Jul 2026 01:15:36 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ecdca904c700b69bbe86aa493be2a5b90b4d271c3cc4c8613d440c0b6c61ec82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48890825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf754029fb677637fadcb2adb4bc93ade8b5675b4c7f34cd115b0644ca2c0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:15:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e24d577d84750492035e9c782071fab720554e89588f20e1fec36b9494c91758`  
		Last Modified: Tue, 14 Jul 2026 00:14:31 GMT  
		Size: 48.9 MB (48890604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08e3282dbff1fd1406228969db41bf0d77dceaba5ed25e8a7e04b424fc0738b`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c32fc0e86963137f5f3c06cb74daaa50c4243d2c8eed5c03afe4b0e18198fd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efa26628bd2597708c5f6a1a30375d91d05287252046d4a334f97fafccbeed`

```dockerfile
```

-	Layers:
	-	`sha256:2d3d445211c22bef77e7e79f334fe6cff73b66fc13ca6dbf8dfa5cec48fca7b1`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 3.2 MB (3154665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d564c309680f045e7d1fcf6ced9ab8d9320558ca5982bb144d56f826c820c9`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 5.9 KB (5861 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:e9be4f15be16eb75e0205872da05e7308b48d59a395979981cea95f8cf953fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b467b997390a4f9f172ca771cc64230a2b5c4d47d29e6b348fe2dfc4a9eff3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:16:13 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:033041026c794ce2a9a5cfe5611236b0c404d192ec5d8c3ce754a28b60097f8f`  
		Last Modified: Tue, 14 Jul 2026 00:15:16 GMT  
		Size: 50.2 MB (50191151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8eb81bfdf8aaf0f930cde558defaa99a983b0135069a400073345fca7de6e49`  
		Last Modified: Tue, 14 Jul 2026 01:16:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:797d8b813ef18992e59e0666393d24db9e895d1b50eaf8f5eb93a3b96e2bf689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3152978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e86deb8ec3f3897ca4e5f7797c7d8a43397b5ae9e14939d6ebcaf46b7ed1dde`

```dockerfile
```

-	Layers:
	-	`sha256:fce073f7bcc14b0c3fc0a5a201d7bbb8ae18271dd2373100f67d26ced6e3d67b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 3.1 MB (3147201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d9610bc9cf20ce475be7034c6d77bab7e28f27cfefe06c03e44357e9c17d6d`  
		Last Modified: Tue, 14 Jul 2026 01:16:19 GMT  
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
$ docker pull debian@sha256:0cf76227d13ff803ee370cbe392c28b44b658928415aa2bac4f87b960679b5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48600956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18bf410cb3629ece38bc1b2aac39e8ccb8632763e2f37a875f5178322b2041b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:15:40 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f6a94ce2329c5fa4caf98783b99d3339a863ea3f00b11f91e4f19cdd64d8e002`  
		Last Modified: Tue, 14 Jul 2026 00:16:35 GMT  
		Size: 48.6 MB (48600735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ea59b8856f09e684cd41c4828f92f46116c340b1fb1ab1389aa92a4c2a036d`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b12101fc2e824e3b8e92780417336f7215901922fe8d495b0a9ccaa7482f7858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8eb311abf942498c8706b1bbdea90bcd01b2e25b60949568436aaeb6393d6f6`

```dockerfile
```

-	Layers:
	-	`sha256:ec0e613ab92be82a4b96befb0c1a92070710dac0910b7f807d988ff9439d6867`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 3.2 MB (3151446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0b2111f20b5b37747ca53ad34f0241efcfe093f59224eb8aa1f43c1e2ffed8`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
