## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:3b4feb7c1f1765ed5659afe6b8df16cf5860e16ec946fb7a29d786f8b68bb4e1
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

### `buildpack-deps:forky-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b4ad81682e68e6bf304df114871ab34e49f040b7df86367a61c48e94a7fc153b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78325930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0f77a68a4590e43db1be1537b9943146a2c597014c4c73812a9ced7b32ff6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:46:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48a2909741e311cf0ce7afcff0c4a557e9dfc7e2db7d533fbea455c53021047`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 28.5 MB (28511595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:50fc402ae5be110d09365ba87b178ea9548e45d72a56ab12c49831b7b377a2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4074898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e5f461ce0c64976a9ad5ddf8235e37fca8c423f0d5564aa40ff973d2b8a4ba`

```dockerfile
```

-	Layers:
	-	`sha256:b915d3d0cdd2d5fbfb1f71352e25d3133c3f0cb1c8a6745e7ae27c6e6e1da473`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 4.1 MB (4068125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208d357322c11ae1767f7e33c56a1e8ca9e5fbee596fb639d19e6d1e86ee701f`  
		Last Modified: Wed, 21 Oct 2026 00:46:16 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e7dc426407d5eeffc8c2f36d313ff2629da6cbfb2e260fb89be41541105de141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71511228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1bbe33497efd8d74e4d7d746ce16faffe9dc3b6bd0ad902a150696c12770d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 02:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3a78d12b86d9577977254cd29839c594a5572094c28e6dc8b2362fc3315645d5`  
		Last Modified: Tue, 06 Oct 2026 00:13:43 GMT  
		Size: 45.9 MB (45924917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba18b4a4892fe76aa89199328866e1197da6cc17a716a635647c4857e40c6c9`  
		Last Modified: Tue, 06 Oct 2026 02:24:38 GMT  
		Size: 25.6 MB (25586311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ba421e02d3d0fd81a593f045835b315107e14632021a1bb13fb0d1e741adb530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a11ff1a89648d624f22154101b3ddc81784689f5240f0713f470e55e8557b3`

```dockerfile
```

-	Layers:
	-	`sha256:9671a64a64c96a3cc9ed02bafdeb0375cbca5954315acb55397d27fc6648e1b4`  
		Last Modified: Tue, 06 Oct 2026 02:24:37 GMT  
		Size: 4.1 MB (4083397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af0d4fd2df90c6dd97efe797f89ab152fd2b2cf3774ce2e5cb3d24b0f73a3f46`  
		Last Modified: Tue, 06 Oct 2026 02:24:37 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5b8f2dbff6ab185fdff87f7c0685e19b92e4ecdfea29f8fcb2440a7296217671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76573642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5350fac7a523ac8e27d9a903d582163aa426fddb9f4757be06192a8ab10fac61`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550fdf21a4adc852253d7b2705e811e8361138dc148c930f266d52d8b12546e3`  
		Last Modified: Wed, 21 Oct 2026 00:49:51 GMT  
		Size: 27.4 MB (27431193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cf80106d34c3682411356150385da8599fc6e69e52553042284c00f17b817138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4078478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41accbe4637b11e110dc94d35016e5634f816a1965b091be3df568cfa98b5dc2`

```dockerfile
```

-	Layers:
	-	`sha256:7bc1a47b5b8ca6e3d1b4fc5e18535ae2c5cadd8430ee562d20815728ed780406`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 4.1 MB (4071625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4452c6694bad3bbe70b24214f49a0fbcefeb988e436a8eb35f02adbb66892d56`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:404573c895289eede338862168f7d5af147523852e5c83e8eae6cc2356a3b84c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80408971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07ac828e9ea9103d9fc1280e79ee9678900e42314404238ff502d9026471551`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:45:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422550af6c534194583569d524526f137a8ee76c087a3303e2a6668986e0b42a`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 29.6 MB (29635115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e01a4a472eb2893525c18d6bfddf6a3a3645b90b419c03e8c6b0e409a2f40799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fd4136708fa30ca92755a0e30d952145f2e03f436479bb33d07789f11947d5`

```dockerfile
```

-	Layers:
	-	`sha256:cf451d2bad4ebe342311b6eecc087868b7f03dbd8f0454417eb8f8be6404d0e0`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 4.1 MB (4078751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce6188afc3354330c66433041f07f67293cfd79c2e305ec5b3d45f0cab9835b4`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:217f53c9579d781aca587846aeb4473db66a02f15572a2399320821e0edfead5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84829848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63522fe58abb40b508399c8d2bfc3cb100a053323a1f8f8bf544111ddabec3f7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:24e970ec93a434808c1ff38e4aa6d0236d311b8d999043bdbef87e821423afbf`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 54.3 MB (54325018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd17dcdcdfa31ee971c352c9eeda807e545d68ec178d69d9e6d18503f5cfa05`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30504830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fc43673eafdad1f6d23dd73d41a5a8a3780119b1a8c08c826081a63d36ac5401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f69ffe0c57939c5476c41c4ea7ec17527e67072d0ac4c5cff1bedddd0764f75`

```dockerfile
```

-	Layers:
	-	`sha256:593a3a09d8e5228eee9a2bdd2576ff7d2bb22d40fc4d4f29666a0d33ba13ea92`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 4.1 MB (4085852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa8961643e2fe7c196eb71a124acb8cbed397921a902589c67dbe7d20bda2966`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:6e481bfd2d08a9b780a93c91475370ef8ac2e3d5837bf8fb8ec8e92dc7522387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74689692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228a71fa1a9b3ca5b4eef39734ab579cd01522c577f76fdad3e603886a7c0186`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1791158400'
# Wed, 07 Oct 2026 20:06:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:602e6ba11a5967cec241891aa1d375f916daf410a1a5df988936e1af6d96be3d`  
		Last Modified: Tue, 06 Oct 2026 00:15:01 GMT  
		Size: 47.1 MB (47131765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f94b9334f18473b40d555b927d88675687542d2b5b3d011cd8c9a65e360232`  
		Last Modified: Wed, 07 Oct 2026 20:08:13 GMT  
		Size: 27.6 MB (27557927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b3d9de5fa9698d661b85861590b10eef24b0c8d792d1b580ed779ce37f2aa8a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4080284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4cb4a4688c4be86f4f7c879efcb1d8481842b1c3ef27d29e6403a5601adfa1`

```dockerfile
```

-	Layers:
	-	`sha256:103ad6acb283f5e960023f53f7a21d8396bfa42e060a167030ecdd948b01319d`  
		Last Modified: Wed, 07 Oct 2026 20:08:09 GMT  
		Size: 4.1 MB (4073479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6bde32c5d0b2978e2d994b4c64c1a71040ab86f26ec4227823cbaca279a0eeb`  
		Last Modified: Wed, 07 Oct 2026 20:08:08 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:beddb27f18e52982c7acb89bccbd273818b38c879d08cb07233fdb8eacaea464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76625173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f1feae9ce73d692a2664a174519d9ebca567602630c3f564d6614ffe78f7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:57:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0ee6ac8b43a7e6254145fd3ccac4ef533ea7f9092fc66943615402bc3f1a9cc3`  
		Last Modified: Tue, 06 Oct 2026 00:12:14 GMT  
		Size: 48.8 MB (48824602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb19ed55d4ce1bd9dbd6bdafff0f8ffb1298554f19814d477a37656269ab31`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 27.8 MB (27800571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d6531b865b891f826eb7366b973c2083cb638a1316db3d43f36f93c65c341a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40baf9bc2ca205c52356aa79eba8c9c25189932b401245f38726745728f40681`

```dockerfile
```

-	Layers:
	-	`sha256:acd8d172900a183a647b385821ba75ebc25c7843f6944ecbdfb7abbc6bdbcfb9`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 4.1 MB (4083102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:932a7f3d8d65bbd5587548c94f8d9129c9a2e66f28bc6389a3d403c91e1469d8`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
