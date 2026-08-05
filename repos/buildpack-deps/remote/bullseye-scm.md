## `buildpack-deps:bullseye-scm`

```console
$ docker pull buildpack-deps@sha256:d6d505cb52dce2e95c6860c83e2bd11ed2dbf9324474aa27b70082bc2a00244f
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

### `buildpack-deps:bullseye-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8c375ebca97a661da7355371c220b33bbdc4e675042fd53e8151054cf2a7994f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124310980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e58a5b71e1c1bf66d9915cef088f8b60220a488841ccce1e6d2f51b337068c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:2b0a3e14e2bc3edab26279efc9f99cea6cf0836afea309df0f22368b3636c12a`  
		Last Modified: Wed, 05 Aug 2026 01:33:09 GMT  
		Size: 54.7 MB (54743062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:addd9e5a93b264dedb269ea2116891c364fb32449ad4e5bea6f053a60b5f8865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7928696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908617a809e721ff893b4800c94322700228d4ef01b6199acbd7e20b4159536a`

```dockerfile
```

-	Layers:
	-	`sha256:ec2d286f672b4fb209135d0e5f3f1c171de3a6822f5fab0eddcbaf66835434d4`  
		Last Modified: Wed, 05 Aug 2026 01:33:07 GMT  
		Size: 7.9 MB (7921381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4440b9775cc12bc8786b396502d28cf3b6569cf3a256e32076d2fd9d44f638b0`  
		Last Modified: Wed, 05 Aug 2026 01:33:07 GMT  
		Size: 7.3 KB (7315 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:eff5d1b0d66bc2568787b8b43bbdd4a3f1719a4e7d97a6f35f2a3f974ef75b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114632028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a07716182b3ec25301d7def00d825aea18865b431f13c28dadbb225ae31a393`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:c7d2221f0bd730fce460a5b83957f059201f1f72aa95400dcd77a3417b834fa9`  
		Last Modified: Wed, 05 Aug 2026 02:54:22 GMT  
		Size: 50.7 MB (50659358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7cb372c75ba47235a035f0fa7f4f4eabd31a4072bcf2233646a39a40c4661ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7930163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76c0e6a1cee83206af211c47b59113c633ea1269a74a0900b0c8c4e523ad0f9`

```dockerfile
```

-	Layers:
	-	`sha256:a89a6864185d00cd1cd45c5a2dfa79b2b23f7e3ce9078f05a69056e816fe1fbb`  
		Last Modified: Wed, 05 Aug 2026 02:54:21 GMT  
		Size: 7.9 MB (7922783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20489a4f840dfaf4c9f8fc37058f074c1fcd859f983bffc27b3418f5ca82bb63`  
		Last Modified: Wed, 05 Aug 2026 02:54:20 GMT  
		Size: 7.4 KB (7380 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6084a6b937eb53c9d1778f5d1fb7c7bd72f272d7c098681647470d929e05fdd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122915490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac3e1778a2efd5c0941abbd1f42391bad6f2a6da7d8bc313fd3a07538b55f1e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:46b5fcd073141b3adf766799633642f41c4f77cfb62c0c10742e8ae4e709d40c`  
		Last Modified: Wed, 05 Aug 2026 01:39:50 GMT  
		Size: 54.9 MB (54879738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6122115d37df726fe504ec6a7db3116624d9e7be5c45b812b487f848d17d503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7934511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5844db452639abde5c3de8b2bb821a95f6cc6578ea6b625c7e2af785fb13fa3d`

```dockerfile
```

-	Layers:
	-	`sha256:a04bff3f1478225baabc0376451a8e84cf17cd94fa18a5c78a48ae772aab625c`  
		Last Modified: Wed, 05 Aug 2026 01:39:49 GMT  
		Size: 7.9 MB (7927115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cdb63fa51e3140af4fd702878a04d2a6548a5ef57897e1ed29e4b80686ff513`  
		Last Modified: Wed, 05 Aug 2026 01:39:48 GMT  
		Size: 7.4 KB (7396 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:32849b27bf27cec5a4ff2530628a008d672761bdc72eeae7992ac1a4bebd3f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127058650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48512eb35717aebf0f4c9e27820aa54ec88f9f6cd310595fe975ad6e5f6abf9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:99339981fcc7a18d45719c6cb593c685d9566badca90c3137c734193642ebe59`  
		Last Modified: Wed, 05 Aug 2026 01:41:10 GMT  
		Size: 56.0 MB (56047172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b0bf38e7f44693700455829eb0d5319f9ba501d1eba58b687b5949d85a8199a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7924245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202b4041a9173356d84a15504625f417d9541fa08e4010d9689dc3ca1d713b13`

```dockerfile
```

-	Layers:
	-	`sha256:1bd2d7839c790938e5921a78f0bf4158c14c4b39ac80e86032ddbea1f340e7e9`  
		Last Modified: Wed, 05 Aug 2026 01:41:09 GMT  
		Size: 7.9 MB (7916951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc36ac54a6ab45773befaabcbab610fa3bbfadb627937d26a79811c78f031c61`  
		Last Modified: Wed, 05 Aug 2026 01:41:09 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json
