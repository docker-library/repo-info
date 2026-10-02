## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:c5c46303e11ee751ec11fb7a036c86a7709d8f1d5087fccb8cffc781d6bc6486
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:633a18d3e3f87057afb7bf105eff09f28f720e33a1fc8b2fdc865e73c0608e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36817227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9b0515f66fad76e4caab59a7dfae5242eeabe7d8a79e634f6955a3d21fc80a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:76691d54c4229fa66bf65fb4a54c1ea150c38df7bd89584db55b356ee920e22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d003f6276488b9c86cc4b9fd078acb1bfd3833c51aade036da81b273c5c10a50`

```dockerfile
```

-	Layers:
	-	`sha256:894c250c48960a42ad2995c0ab0cbf82c0065d8618edfdeac633ccd3b2af4ae1`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 3.2 MB (3190926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a637413e5d4e388076043e65d23eb97bd8818acf614c7395e105ffa6b1fd7f2f`  
		Last Modified: Fri, 02 Oct 2026 01:11:48 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cfced603fabab207bbb533e532c120f6d14a8bccdc22809b3e6ac5ea353ea1c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33822811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb82e24c507a21a6fd9b81822e76fb7a29062a518ae5b4e860673cc1a34cfbd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:23 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:23 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:27 GMT
ADD file:f85ca4890cd4193429589692b507cff4da19fadfcd09f8f3b76059208fa9627e in / 
# Thu, 24 Sep 2026 22:24:27 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:63273367a03196c0df650ce441c9e9c9f2a05ed2241c911b17566eca78d2477d`  
		Last Modified: Thu, 24 Sep 2026 23:36:18 GMT  
		Size: 26.9 MB (26855856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b23c69db30f347e1678227391ab499623fe60cd470c68a468692b6eda38593`  
		Last Modified: Fri, 02 Oct 2026 01:11:18 GMT  
		Size: 7.0 MB (6966955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6af94851c8b0b9399777d07a124155f259b6dc073f8fbad76caca18f94f3542a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8fbb9dab2fe9d220a690a719e09e072b274e964394f24146730761976c80e`

```dockerfile
```

-	Layers:
	-	`sha256:c883656fe9ad095f4a30cf7f720df5062b5a88fdcf32c5e84de65a681e8f410d`  
		Last Modified: Fri, 02 Oct 2026 01:11:17 GMT  
		Size: 3.2 MB (3193233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb55dcedea2429b47500203556130b499892e2e38b4b208d3bb5ba98a3b0a009`  
		Last Modified: Fri, 02 Oct 2026 01:11:17 GMT  
		Size: 6.9 KB (6945 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b2bca7137f0fc566ce4225899b4f8ce811645a5e2008c2aa70933fbacae5295b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34704462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4a24c954304e17abde28cc02c45053efae37e24a6a6210a0bb1dfe23825360`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2ba0a0f3b4f7a25d3124e350aecd960907be233fddb8dcf3e0f6965d9e3ee2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd66be69843d870bfbb6965473487ebaa4b1ff06cb48af1ad6f52ed41bd6b0e`

```dockerfile
```

-	Layers:
	-	`sha256:62d252d50c3cd1300498bf451a4a74d0f5816e71e785a7478ec306ae4bab88e6`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 3.2 MB (3191193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c67278b4346cdb16ac98754fb9c1b602e162959baea73edfad1de7553938578d`  
		Last Modified: Fri, 02 Oct 2026 01:11:48 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fd140ebe36f3c95147340765c2c1bf5be1883db5d8e7bdf30860f9f68cf20747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42849957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdec136d27a1bffda0d3bf3e2ee8cac8ad16b486ee976a87a6d88e99d3b3c68`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:29:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3957c99cc69d4f73bdca6e8af244f071ddcfd5a9ea6755c0e070ef51d1b26b`  
		Last Modified: Fri, 02 Oct 2026 03:29:30 GMT  
		Size: 8.1 MB (8146749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4fa9b33672b3a664f157020079606f61663c0dae7dc0211f37c329c0df0ac9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00512bffff2360242d9c596a545d419287e27d54ab3572efe8b7d2d6ddf9bb8`

```dockerfile
```

-	Layers:
	-	`sha256:3f74c333e2cddb88b6b0205408460b5119fe6c03ae8680bee592e39aee6785d1`  
		Last Modified: Fri, 02 Oct 2026 03:29:30 GMT  
		Size: 3.2 MB (3195562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642380d4854bda772c5b6b1f47285abb0d37ce5a4ef5b5bf8bc835238388f0c0`  
		Last Modified: Fri, 02 Oct 2026 03:29:29 GMT  
		Size: 6.9 KB (6910 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:600959f1126f8cacb13c4672c656c9ed9d2c4569a9fa1d5d10a94c309c406142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34376957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f445ed7cce008129a942e72103ff1aebb8d7f7ade8792ba9d5c4cb81b55592`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 13:13:37 GMT
ARG RELEASE
# Thu, 03 Sep 2026 13:13:38 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 13:13:38 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 13:14:31 GMT
ADD file:e7ebfcc9293c77772284fe8db01e32767f4bd638e50d0ab6c253090570c3f1b5 in / 
# Thu, 03 Sep 2026 13:14:35 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:77b79c0283744d00298c0eb4b8b5295466b2a44d4a6328498f8a886e68257a40`  
		Last Modified: Thu, 03 Sep 2026 17:08:48 GMT  
		Size: 27.3 MB (27301076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49db17c8594077f04ae6db72664b25d79dcd990046462f07154eb62b123c6cdb`  
		Last Modified: Wed, 09 Sep 2026 02:13:39 GMT  
		Size: 7.1 MB (7075881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6417d3d254d3afddd4940b98378bf87de5d77b7e0c939a35639ad5cff8f495e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3041cdcf6c48912bbc19904ed358f070692b6bdef522f7043e20c71d6f2bd9`

```dockerfile
```

-	Layers:
	-	`sha256:c874d697b6de52b795279a4d3a08331ee7180e84c6cccb0538a10ff7f28653fa`  
		Last Modified: Wed, 09 Sep 2026 02:13:38 GMT  
		Size: 3.2 MB (3184255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5156d0f374224ba9bd6b6a24e8bb18f647e0874e2edc685cd9e79ab64e89195`  
		Last Modified: Wed, 09 Sep 2026 02:13:38 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3f8e8aed99a9b80512c62e0ad9f2f3b9058023ae976f7a5b20e05473aed5ad53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35200778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa00b7c7f3a3f7544336f46c7747ab528cc441f025f76c2d842316975793c7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107c8307b8f1f0cafa2d997faab0e656ddfa0fd267f59c219822ce06128f510d`  
		Last Modified: Fri, 02 Oct 2026 01:13:02 GMT  
		Size: 7.0 MB (6978710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:668197a6f242f35880497022921449e9338aa86dfb5e9b798f90169e88c70c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317c8a5ce214d887d4f7c35f86ff18aef98b894e3511f3d86f55a85331c93244`

```dockerfile
```

-	Layers:
	-	`sha256:03227fb9b9691e83fbc6951a281a8f3aa19424093ecffb76b4a2ecbb0711cee4`  
		Last Modified: Fri, 02 Oct 2026 01:13:02 GMT  
		Size: 3.2 MB (3193143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fe8f675537e6e13aa38ec12add0ad686e5b4776b7bd83a19a711cbe1d6a366c`  
		Last Modified: Fri, 02 Oct 2026 01:13:01 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json
