## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:c199e8289ea98ac4d183be210044279660b7d9c496a6294cf5ed747938527fbb
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

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:80647d931b1d7e03ec2a7981df0a631453b4e9b97539499be9d082f86fe84d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136823119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecd4bc2d40dece7a520a89a69e598f61ef4f6db0b2fb03db7ed6de5dce9929b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0959ba39613fdd89ed3679cb0483740e954fcc9d3e68d882e6f27130ac124e0`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 64.4 MB (64429299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f31e5884a717e29c26c29323bffb75d809400f94f38c336b5ad0a0f6a3ef29a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7976639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e6d35d119f234af9a9258c8b4fa3247ec7999816b5c75dc4b84d4645e92937`

```dockerfile
```

-	Layers:
	-	`sha256:aa402b1269e5c108720aad783acfbd9ce2971d699de7d43b1058d137060bb442`  
		Last Modified: Wed, 21 Oct 2026 01:28:04 GMT  
		Size: 8.0 MB (7969329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6f3e055c7b81c974f98e3aee8a9fbfdec74b5df070f9cccf7392bc3f928bfbc`  
		Last Modified: Wed, 21 Oct 2026 01:28:04 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dbc50f36ca5e4ee445ffe3c1810f8c97de7fe7a04d2ef6fa3263726019b8a206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127759968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76e2cb12f924b01dcad0cd5cba388845d5871f0696b5418aa32cc1167275f6b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:14a60d6227dfeea721b9c9776beb63e994843d1e767b07fdc0e1b6f68373cafd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfbe69777a263bf510ba87e4a578a1c3b04bd9fefe11864dcbc5b2f756067df`

```dockerfile
```

-	Layers:
	-	`sha256:6eda336ddb64e6fed249876b653a896547f5c4b5f16e42d10bf65d09c330163f`  
		Last Modified: Tue, 06 Oct 2026 03:40:50 GMT  
		Size: 8.0 MB (7971901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44a2640ca5498e17b193b6c4070e44813df35e9d12de5ecaa1da59262b0c7673`  
		Last Modified: Tue, 06 Oct 2026 03:40:49 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c91dada79200a96f685a681f66a558e82423868f404ee1906b9b5c84350571b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136365798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4958687e35081d83cd8feab78e8afcdb93f23204c92fdae380a7c864c7f1c563`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f500343e7e2dfb125dab0e3da0151614ed4139d23d4e7b5b214a9b5bfccc0`  
		Last Modified: Wed, 21 Oct 2026 01:34:11 GMT  
		Size: 64.5 MB (64523759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3caf422dfc735f91eecf33e4e6a1f2a101d3d340c9e34c09b96c8691874828ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0d48115654288437a573ca5610aafb4d424242ec8b693533eae4fc89c69bc9`

```dockerfile
```

-	Layers:
	-	`sha256:e9ca2d7d941fa66409c73e42b721340de264e4f8e8fd99d1cd68ea9268e198de`  
		Last Modified: Wed, 21 Oct 2026 01:34:10 GMT  
		Size: 8.0 MB (7975722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e55dfd699529aac6cccd8142a1293b25b41a14f1359fbbb9b6155303d51eeca0`  
		Last Modified: Wed, 21 Oct 2026 01:34:09 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0bb5628edb65f3ac34ed946eb1c2001bb5926c47fbfb80427f3842ac27b57427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142903868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3def7d2354b832d8ef6b8dfa533dd7514c173f594066628a067156c97e38d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d94c10bc91c029db72cfa6419463c370ec9b076a44e7324aa9f4aef061bddfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478eff9970dff571434d3aa382a6de95cb77c167e876815c3aa39b409069c2e3`

```dockerfile
```

-	Layers:
	-	`sha256:8c68b6fb6228364131d076f9c7eacbf01e70e66e1d8181589cb65774ebe3bd2d`  
		Last Modified: Tue, 06 Oct 2026 02:32:27 GMT  
		Size: 8.0 MB (7966783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78469fe968a6a710e3018ddbcbb7ce1437b1677a9d4cff91c467e90259f31d6f`  
		Last Modified: Tue, 06 Oct 2026 02:32:27 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:419383d6082127498e0e04eebe6923be0e6df9627285a90e66cb37d7ffc6af4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150207856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a42fb352238b5d1e1af05e97484c8e21b38166f3d791cdfedf363698f875f0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a09cfc418c3aec494f8946561bd728209196dacc09fd66d1085056f4e142bc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1b44cfe6e623d2c9cb24fb67c22bf2549f47d603dedcbe26addcea3299f889`

```dockerfile
```

-	Layers:
	-	`sha256:bf33434094fe762333f224e55b135f13544f85d2e9535c23e86317841f906d3f`  
		Last Modified: Tue, 06 Oct 2026 11:38:48 GMT  
		Size: 8.0 MB (7978495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf57d6a36af6bc4eadc336a7a439525a12d62d1edb9d728746585f9732bc89e3`  
		Last Modified: Tue, 06 Oct 2026 11:38:48 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
