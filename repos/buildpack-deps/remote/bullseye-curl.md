## `buildpack-deps:bullseye-curl`

```console
$ docker pull buildpack-deps@sha256:6eba8d1d959578cd1e80593bcf375bf59fc85ff083dcb51c591138ccbd044b5a
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
$ docker pull buildpack-deps@sha256:c66298d2af959a7d7cdc0d5083591c616e4689d5d918f7ea176e791c2072b96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69582559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b3dd6e16a385427e1625f05f307d29f9079ac925b98ca757ac94065cd39941`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5909957719ab662a311099b46df8f146fbe5be5ec749fa12615589aaf221b5b8`  
		Last Modified: Tue, 25 Aug 2026 00:50:43 GMT  
		Size: 15.8 MB (15805167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b2037adcdea4b76952dd9cf0cc6c5562605117455cea05457dd65b85a86f77fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4649489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74001eee789276eacb3dc42c9b452c019fe1272afd78d14f16badbbf4d98c9c6`

```dockerfile
```

-	Layers:
	-	`sha256:d3f1ce87b9f0806735be5dafaa3a63beea722337ca01a20f8b5e9ebd44e44b36`  
		Last Modified: Tue, 25 Aug 2026 00:50:42 GMT  
		Size: 4.6 MB (4642726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c291b7c3ee3602acdad4149f44329cbec0b49201ff87ffaa5701aea86a0f8587`  
		Last Modified: Tue, 25 Aug 2026 00:50:42 GMT  
		Size: 6.8 KB (6763 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ad5d6dadc0c97b01e36c40b21f5b52255eb1bd61b7c9ad85cc24c0bd67ea70c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63972670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0387727aa8871188cbdd467266476d729724b9a74daf43ace322ac80f4bf75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:78f02c4a9e536f4eb1489b80caa0f24ffc5d691c897b9d8eabf0bfa5de3cfaee`  
		Last Modified: Tue, 04 Aug 2026 23:51:43 GMT  
		Size: 49.1 MB (49067288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e547fab74d5231727514aa7187f974069a1ee9a7f68290afbd470e94e9851e`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 14.9 MB (14905382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1addd119d18239ebb9e55432f53b19ab93ef175e4b5f96b2771e9391775d43f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4645986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69017c1d3ad57f841a40c4e8234fb65600166262579d988c8b87fc053babd7f6`

```dockerfile
```

-	Layers:
	-	`sha256:e7e95c5c1411fe467a35648083fb6abd8467979429b8cf66dd58bd076a447491`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 4.6 MB (4639159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9f81bb49dd77b8661c54025e8ca5f56f48d8d1b99bcaa2a831af68f1b661fa`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:49521cfd06080fffaf05534433895d7a15b8ad4cbf7fb41197093770cd3ed01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68051206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3d3dd346b4df88f439aaee02f1b49ef44c756263ccad70fee4e7d0fb3f5d60`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebf8e47572aa15d512f1dc9c2f5be1d99ab6c1c7747e4670e36bd9518a42b0`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 15.8 MB (15789863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc4b310b363547ecb26ce7118177f05229434040a56b89021b9e1ef2ce23d7a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4649184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a576fcc2016d2ed11c150bb8cf8a59ce3156d1658552c74e7a5ef89d5e5a75c`

```dockerfile
```

-	Layers:
	-	`sha256:f9c1f5fe70aa4fb4641286ea9b073396b5cf186d89650bd8ab3875adc59533ec`  
		Last Modified: Tue, 25 Aug 2026 00:52:50 GMT  
		Size: 4.6 MB (4642340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210d9c93f2f71654b647627e224c89bcf122a8a07c08b0d18564c3519b1bd96c`  
		Last Modified: Tue, 25 Aug 2026 00:52:50 GMT  
		Size: 6.8 KB (6844 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-curl` - linux; 386

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

### `buildpack-deps:bullseye-curl` - unknown; unknown

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
