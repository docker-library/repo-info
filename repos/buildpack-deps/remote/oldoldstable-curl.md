## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:eab3bdafcdb82f01453bbdd769477080e8ac54d3bf397ccf900ca9d49596c9a8
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

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:90e33d6778a760ba6f1c6d503f70402dcbaf7f405d74ace9b080a393b03d5e5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69567918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bea4ec502b2318594e2e26d96dd4242a23242a9975fe653852d3c9bacf1e49`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d7359387d3fa9038e8bf44abbc955fd847f0ed595392167fcb6d374b1e30a`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 15.8 MB (15790899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cdc1197b5bcf9b52e4f0e72f8e5e4655196301ec3f58338943a5d2ab75297a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4644287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a826412bec694287aef53bf46a6a6c8bc483d16c18cb8e872627380958f2aa4`

```dockerfile
```

-	Layers:
	-	`sha256:770ddb1f3be101830bf4acad8414aee8e5d4e2848cb86d895b90f763fc888204`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 4.6 MB (4637523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7cd436bbffdedc4e5f496813773eb380d123bd68ff51024f5ab0463a6a5d580`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 6.8 KB (6764 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b065d6966d829720c18773e33baf14590d790019068018f6ba4cfac0126a9aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63972144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372ceeba7933b8add5425abb5ce53d704f3ae70523c70caa0aef8bf76a524737`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:79f8122bf1fad87c58a2f6b6abc369f6df714bcc40cd08395085726d7a1357a4`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 49.1 MB (49066855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729edf26ef2001255f6a93744a2467482c1d8c2d0cc94c098a71afb3dd3af65a`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 14.9 MB (14905289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cff2b3f34c3c6854b4eafe23efcd21077a6846cbe5969313497748ba437bf1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4645987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c48f46c986f37ec30fbfd7e5505410b915db9abc015c2d2084fcff0c27a3723`

```dockerfile
```

-	Layers:
	-	`sha256:5cbf24aad40b9b864880224af491a6374d0d10beee15a9434a4df9ac8702f0c3`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 4.6 MB (4639159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7457b90bcb3e7ae6c47617c5985803ebccd2385b637c259e7769d9656a89203f`  
		Last Modified: Tue, 14 Jul 2026 02:29:49 GMT  
		Size: 6.8 KB (6828 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8e669ae5d333bbefa852fc5e46e075b38ef77cccf2db732347aec4cfd6046c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68035752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0eaa123ef25660a013ca8a855f789ea2ab16ee05f2ca05dd6203b3ed54c224`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207d92eea9a933027b87222e2222a508f86aa6a0611f397c4c08f266c630bba`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 15.8 MB (15774850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:731a8739e2545ffb6af37b6837b71df7ff8b473d94ae1eed5b50b328ded9cbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4643981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e6287598df4edd4722942a7c3c9dd596faf850521a9b3b30a1ec6038b87a7f`

```dockerfile
```

-	Layers:
	-	`sha256:9cc5de98ccecf48b4124ff43cc9ebd30c879b5119288842856f90a6e0a1af117`  
		Last Modified: Wed, 05 Aug 2026 00:47:15 GMT  
		Size: 4.6 MB (4637137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06067f77c004710d3dd394e5244c05c895b57452440c72bd13a474c7976f5a74`  
		Last Modified: Wed, 05 Aug 2026 00:47:15 GMT  
		Size: 6.8 KB (6844 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:33c45e39693cdaffbb5132a9a50116e24729a609424692ac8f44ad78f1c552b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71011478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0079315a08afdb3050b85a457e047b91b38d47051f4b9787bd8d08d725a28881`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30f3a91acd2928e076b886b4ca6835a60bf3b897f1b2e11bf58f61c25c7b45`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 16.3 MB (16295745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2caf1e7177b8f0082a1c22fde3d6fa119443cc9453c323eb47b18765006f9ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4640767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57826f81f26d2206b54123a0df1e903e8591a1065e13901e9c16238198ab3ad0`

```dockerfile
```

-	Layers:
	-	`sha256:ec000240c712788e40b18e6d2cec58beac631dd5a6d3836b2bc75cbd538e9762`  
		Last Modified: Wed, 05 Aug 2026 00:46:48 GMT  
		Size: 4.6 MB (4634026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2ebe6e3859a14fa83b4817342c81ae4846a095eea4a1f7086307961165d510c`  
		Last Modified: Wed, 05 Aug 2026 00:46:48 GMT  
		Size: 6.7 KB (6741 bytes)  
		MIME: application/vnd.in-toto+json
