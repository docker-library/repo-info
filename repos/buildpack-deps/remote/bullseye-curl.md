## `buildpack-deps:bullseye-curl`

```console
$ docker pull buildpack-deps@sha256:56d580ea894946f744988e5b6b5c1ab71ef47f43d548d79e430fcffa37ff3285
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:bullseye-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9a0ac8cd3036820811df78e54eecb3d6b9ad20c103bccf986cae81ad34988f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69567404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724ca065bfa12b351838453154b6d687870f591e7237ba56d579d734fe9376c9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5681d8e1155e1bb706091f1a7eebabc55855cdbdb20c01f3851abaef0f290`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 15.8 MB (15790828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df6bd056e26e3fc428b4325eb542f02e9c3bbba49be381e677e28a7dc4c5f469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4644286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3251a09ca9f208a322ef800193ed45efaee6729d8a1080089b19838d732753`

```dockerfile
```

-	Layers:
	-	`sha256:dbb4a2967d63656c6f39ccfe3b81c90c9e12df5ee6be3d5af582c4bc8f81a997`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 4.6 MB (4637523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15a5266b454b04daa3c8e8052b0fa088e8ced7e6b91576ea29acfb0e2123aa6`  
		Last Modified: Tue, 14 Jul 2026 01:43:31 GMT  
		Size: 6.8 KB (6763 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b74791cb12edc2f7067b42fefbfa22c9b2288918eaaa75e855c676ae8bb48f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63969436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbb3723c29c8ac03003524a01db1b4dd332d84863e39a3759a02bbe2ae8ccd8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:23:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fc5ae1e57bd12fc3393aea9c4c883b87d2ec58e18ce0892f8effba71fbfcd039`  
		Last Modified: Wed, 24 Jun 2026 00:28:02 GMT  
		Size: 49.1 MB (49064073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354f5593b138af5d5b60d8e82c822aa52fd74f6a603db24886e0573d60561397`  
		Last Modified: Wed, 24 Jun 2026 02:23:28 GMT  
		Size: 14.9 MB (14905363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8a325310f33fbb951137306cb66b05154468d3f97fe5986e563c1a0c89e75d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4645987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079308e91c9ad3b0f451e602fda7ddffdc7df4daf87f03f848ebc28f6098e959`

```dockerfile
```

-	Layers:
	-	`sha256:df69d85454ac9a36da2a7fed9042bc058eb3c8d4eda909b2a9b183a23dc4e358`  
		Last Modified: Wed, 24 Jun 2026 02:23:27 GMT  
		Size: 4.6 MB (4639159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ac36442c73314677f422a71f54c979a399eb840555930b781b188c08e1aa78`  
		Last Modified: Wed, 24 Jun 2026 02:23:27 GMT  
		Size: 6.8 KB (6828 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:361a80a3f1603e80bd6f19586458263b17e7db0f7c504afee2a26ce635d07008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68032173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690e1c430850b47a5537c7ebfe94088d82af43de37c7f09d893e51dd8341411f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf305d6ad7bad47ee0696c3db8b8fed8e9c2a42c53b57d047f8ab32f5d9b546`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 15.8 MB (15774954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d7d3f8093a1b487cbe35feaefca5c3c9731d7ed13e3e772a4ee2f15d2042e8e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4643981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db334219781291458650e058018ef34aa699d8b4d8c167f255d6e064bcb0c2dd`

```dockerfile
```

-	Layers:
	-	`sha256:8ba25c8a170511ea5c72b46da007860a2247b66280176f6a97d920e7482ee2bc`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 4.6 MB (4637137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f037b46345e3e2a1f8528fda77d5ecccdc0dc67631b7ddc3aa9ea4ec97b45872`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 6.8 KB (6844 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:eb15c1282a0dbd35932bf6b041beefebb48715a5a94370c6568374f81b443ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71008602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227f3929736cb176212eeba54dcfb629d4c67e79a18bc7e4ce4abd80b36d20eb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f059b391cd2cd82464a697d38282bb9c5437ac5b83e7b92cde4d9a0644a137f5`  
		Last Modified: Wed, 24 Jun 2026 01:44:13 GMT  
		Size: 16.3 MB (16295718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ea2327506faf2adb61a58e378c579e8bc39949993bd565a49619c4cd883429e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4640768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c829bb0976070e0ded0dfa5da89b335264aee3fed1fc2a10b1f4695bbf601`

```dockerfile
```

-	Layers:
	-	`sha256:3ae6a734c598fafba2a7ea7fb67318093d67977ad20dff871d284c7a349bd6da`  
		Last Modified: Wed, 24 Jun 2026 01:44:12 GMT  
		Size: 4.6 MB (4634026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d17908bd53053b88a6866737e9fdadc616ac01109ab8c640546190ce0f27213e`  
		Last Modified: Wed, 24 Jun 2026 01:44:12 GMT  
		Size: 6.7 KB (6742 bytes)  
		MIME: application/vnd.in-toto+json
