## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:df595d4b46a902702e481660c20f4801caa1af7dd8d5c2c48665f182de5a9a7d
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
$ docker pull buildpack-deps@sha256:7e9320aa83c8b6c5a90d596728bc47cd20a2ca286bb17fca6b99b7b5273e9139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125688897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1319cb5b6e5f863e2fd1390f3355a52314e107141ac2d8b6192b4a8c21368d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfbb29011d30458b56293a68613d94dc4b801df7c78c8b832f4d475cb486667`  
		Last Modified: Wed, 28 Oct 2026 03:47:25 GMT  
		Size: 59.7 MB (59697464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4a7e843261399462fbd30ece6456ea00c67bd18fe988a94b67d28de641c551d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d76868d47b4202883dc7429e13cd4a5a29405ca93845663d98c5a81866feef`

```dockerfile
```

-	Layers:
	-	`sha256:671f890144755bcfd5cd5a002390504269b01edd9e1a4a283cef498bdbc30683`  
		Last Modified: Wed, 28 Oct 2026 03:47:24 GMT  
		Size: 8.0 MB (7969830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed7b5306f0686ff61017f042334920042c4b510506b2a6eaa392de483ea21fb2`  
		Last Modified: Wed, 28 Oct 2026 03:47:24 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1aef535ea83d3a3fd23fc115d2902bd9bb8dd4548e6a9370c62b5e25f2e26025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136373550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616f82a19ced15b40aac13da181e88bc522ffda40a3b00240102142f312bb5f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:94e7393e75d518c27c2debd9162766b9434318643292d551cc287e05a328ac08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7982336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579817eb58a3abb9c62830803373e9dd3d2311d6a8e093d94405f07f7a46584e`

```dockerfile
```

-	Layers:
	-	`sha256:369df2f055297af3e0109e42c13112ba6e1766752e2239f269caef212664396e`  
		Last Modified: Wed, 28 Oct 2026 02:34:37 GMT  
		Size: 8.0 MB (7974946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89b1e7ce577c7c43b0bda082d708142a3892e945696d45262b004f777401a8a4`  
		Last Modified: Wed, 28 Oct 2026 02:34:37 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; 386

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

### `buildpack-deps:oldstable-scm` - unknown; unknown

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

### `buildpack-deps:oldstable-scm` - linux; ppc64le

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

### `buildpack-deps:oldstable-scm` - unknown; unknown

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
