## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:1314fd2a9c83b257b37132883b3c8e326d3909211bdcb419c9757399ebc34bf3
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

### `buildpack-deps:bookworm-scm` - linux; amd64

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:14802f28a76e87372f90cf4b3154fad5a6d4800114f64512d182e6e1ca91b98c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125681703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca35ebbb6280c5c2ba2ea9ca561bacce5355414aadcaf9fc4fc55a485cc05a3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:48:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8c892ba6482c59c6c4673bc4b52f8b8279d6f30b88b616b25845f3af907bde`  
		Last Modified: Wed, 21 Oct 2026 02:48:32 GMT  
		Size: 59.7 MB (59693453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:254c94426f8cc490c6bf630f7582ea7fbe49377bdeb4ab8a992bb92b4cf285f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff03fa5d7d7bd9613d41d7cc2562d32abbcd47ed22fcf41c0c4260533bc7193a`

```dockerfile
```

-	Layers:
	-	`sha256:81a0c7c8692e5f18db61545a11866dde82624c60f49c4d1803e66ace6845a1d3`  
		Last Modified: Wed, 21 Oct 2026 02:48:31 GMT  
		Size: 8.0 MB (7970606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ed2411fe0839661f8b8c43fdeaf17399f2a862ed593d88cb7af1ef4857fccd7`  
		Last Modified: Wed, 21 Oct 2026 02:48:30 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:914a33ee8b566cf9509c4071f7405976c275f3fd1b6e9ae50063a96d25cfca25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140485194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472b3e36653992ffd2195cf3cb3824efede2098523102f88f3565e5224c59bb5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:48:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:24:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5c931c0576f2166fcb004f72a7907d54e3d103e9fe67720d889fdb25bfdfecd7`  
		Last Modified: Tue, 20 Oct 2026 23:30:02 GMT  
		Size: 49.5 MB (49511651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb278f446e61688e19b3920610d3ef09cddb78ec196f53a7ade170a7ad811ce5`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 24.7 MB (24701921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af92d024ddc6bcd24007df1444596af45fac003e05b18a97a53c9fa241b9486`  
		Last Modified: Wed, 21 Oct 2026 01:24:23 GMT  
		Size: 66.3 MB (66271622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ed6223ceae9103718c0a59e858b77a7795c8b2a54aa82c6079685f1dc6b110da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7972776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c9101f262cab92927f4cdf28eb3a15a7658d3e85a35b0e1e6021bec69c318f`

```dockerfile
```

-	Layers:
	-	`sha256:a9d1b8499b0f5fa6affeecd448d66604c26d785584b48d7d9811d6cf4ab8e398`  
		Last Modified: Wed, 21 Oct 2026 01:24:21 GMT  
		Size: 8.0 MB (7965488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68217928acec3f58944c33665185e6a9a0f74d09483ccc6f887e42d9b8dcf3c4`  
		Last Modified: Wed, 21 Oct 2026 01:24:20 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:20dc2102ef31fb6bba137214083bbfec3ba7c2ffe958ade1d103b4f2ed6fe365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147771810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309da8965d7cdb467930e71ac60dfd6b5daa1a5f3c1827c0631908cd3f53f4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 12:03:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1464e6ff9e88f81f47790e0b4d11c04499f7ec50f83eee4e30ca561e051dd7`  
		Last Modified: Wed, 21 Oct 2026 04:20:38 GMT  
		Size: 25.5 MB (25514941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d030ed614020eda0369d41da0e8a2fd91d38334145593925a75dff283016302e`  
		Last Modified: Wed, 21 Oct 2026 12:04:46 GMT  
		Size: 69.9 MB (69892128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aa4ee70cd9fb8636cd59ae3f154d7d2fa61fccfe96363310f1129dbbcf27b8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34c29d2d7f7ceeb94971972f212852fac014c6a5249944ed64ff9ea54d0db33`

```dockerfile
```

-	Layers:
	-	`sha256:107cdd68f64ecb8ac473e2a2c9cb8d56aa6556edc820930ea3df3688880f0e75`  
		Last Modified: Wed, 21 Oct 2026 12:04:44 GMT  
		Size: 8.0 MB (7977200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f88a930ff4877ba32f9afb624948e791b009022d0321f85540848c7fe9a9d02`  
		Last Modified: Wed, 21 Oct 2026 12:04:43 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
