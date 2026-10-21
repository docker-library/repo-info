## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:4b8bb784a622498ecbe9c29cae1a65c47f02f796e80684135cabfdb2e48e19fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:ab85b596317b2477c0ae373670daf71415719fbe53397220e40f1359e621a947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48522310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed07891d2ba95daedf825bd9201d6c959b798b3ba87be42147d04fbef7068f7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:30 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5e3b6f3a5be50bdf0dd05d331a719d0a3fd85053a260bc3e40d0467f3f6f02`  
		Last Modified: Wed, 21 Oct 2026 00:14:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0ad16e43a0b8e6c6822a189c22f7f6251d5f1b786551dbb00b6a5babbba07e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a38baa2de714b7cd272b286ce00bdd31edabc602a0000ffe7cf7c5c31609d6`

```dockerfile
```

-	Layers:
	-	`sha256:3306976cacb231f11f4ec65d140e9f8b57f6d035c1e815c9936ad2f161bc7e16`  
		Last Modified: Wed, 21 Oct 2026 00:14:37 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60e7ce570bf03fa96e6bbdd0e83a2acdd87c237196a8bc1a6e64f6721d3912e`  
		Last Modified: Wed, 21 Oct 2026 00:14:37 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:97d215e7606b512649b0746c39181906164469798dec653c63e099577996e1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44220021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff7bfaafe6525569f3a45cd9cdf6004599509d42e08407cbeb18cf9d185668c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:25 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a023d8ed0a87a43d8959200d06a3325408557d6f3d966d41cd6363387b6d3c06`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5d65b0bd9a4dfd4e05ceb0a7a36b1512e3d355b04852965de6379721729f08d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9701af7dbf1ab9b19a9326a68f7992b5946bedeaa65154eca14c34de3737d00a`

```dockerfile
```

-	Layers:
	-	`sha256:5bf5bbf2c3a8f42cab5ea27e9a254ca48eed7e1f7f2a800cc457945594a0ba5c`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd241cb875abf92cea80cd95f6a274035ff0eebd88cd941e1ad1d29a717cab7b`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 5.9 KB (5859 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:fe907553745e7c583a06f8cde2d4cacc3da31e1a0cf7430e45bd3bd40b843411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48403336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbd24419db9a51d9a755b954f6e4a8f5dbb317d7695afee71f27cfba443b55c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc304b72964e475cd0fbb2d0e3dd8f108429c11672776f6a229a7be20b56cd1f`  
		Last Modified: Wed, 21 Oct 2026 00:14:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:369ff39a3137c264c400d532da05f65bbeff6056c8db6d84a85100032e934642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd25c617dcc10ba66401de08260de2c3238820ef61d9e6615851e51038df9b39`

```dockerfile
```

-	Layers:
	-	`sha256:07da7bad0e696ce1af0a66b54bde988af2bb0619bc3e23691c9fc0635231d332`  
		Last Modified: Wed, 21 Oct 2026 00:14:26 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8245477d2877b114e94bd7a2165baa385e5b94f7531022867362a46444756c57`  
		Last Modified: Wed, 21 Oct 2026 00:14:26 GMT  
		Size: 5.9 KB (5871 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:d3d5175e7b8f213b1ac6b2aeb9b303ee1f4192c4e10fef2c9f5d84779cf6a4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49511877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9634b971d2b5e5333dff0f26b1baed8d467cec2bb4681c46501b4cd54bb31c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:52 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5c931c0576f2166fcb004f72a7907d54e3d103e9fe67720d889fdb25bfdfecd7`  
		Last Modified: Tue, 20 Oct 2026 23:30:02 GMT  
		Size: 49.5 MB (49511651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79acde546d0116c5696ebb1e519620bdd2527ec3a08aa8f6b63700439533e5b`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f50504acf55fe7ec2638fac22bbd45aa015f338fbab63afacf9a0afd751c6432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88d04ad4bd795fac8213a79c655b4baf1292367d6ffeb56555fa2a9128f40f8`

```dockerfile
```

-	Layers:
	-	`sha256:5e2353956139a32901e3e8894f854908eaf971c93408a7246b72ada7e0f9f704`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4b6ea85adb1112d748450e30064ac9dc48cdf64591b92cab154c6d332518935`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
		Size: 5.8 KB (5785 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:b072e3cf36434d76e28a3c150a939a97ff3c292adcb1b8a1f6a4bcd6864b38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52364968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e653762d109c76b1cb4f78e3aae4738cd29a7a9a30e36f89c998ac75cdcf6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32dbc5645c1c37be7a5bbe3b202c90471da22eb5245301beb1a3019b4f1d8b06`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:603fcd95cb8575aefc10a8e6b9c561b08198f86f1618525a43e04b6de92996ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d8069dad09d539c705897e9ded485c855d789a31c2c8e86a20bced1dcab8c9`

```dockerfile
```

-	Layers:
	-	`sha256:691db3340de59a3e44a4e62e1f6fbdc03da6166f7a428f96b6a2ec3973ab27a9`  
		Last Modified: Wed, 21 Oct 2026 00:14:49 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829459beb0fed84c19fd8e59c5d1daf645af62c9bb7cdcfe62665674453e9562`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 5.8 KB (5829 bytes)  
		MIME: application/vnd.in-toto+json
