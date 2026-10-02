## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:4f50bc40cd207d5dd3174ce01fb48ca3532dd93e0fb4b651fcd20804900e8e82
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
$ docker pull buildpack-deps@sha256:7eea2ba77761685fd56b93839d5de9dd3ea0c41ea5549f0123ca62d6afbccd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36815535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bbfe689bb14bb28b09815f8ed5c37ebefc376a562537a40986c5bf7d175ee3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:51807482558b63d1cfca37162ae2d0b39b2e05aeb53f61d26dda5178ee707517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8cda600a0abc81b08a36e4ba5c1481e73b682273b82c3cbf11aeb632e9403f`

```dockerfile
```

-	Layers:
	-	`sha256:94f489de537b992bbbc8b96d5667d46dd1e9925d4e16ce8d52a30e210bb9cace`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 3.2 MB (3188995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65b7a3ee00690d9a1d5550885872cec695c9e6ee14d88a6f71e2d22e50a04faf`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
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
$ docker pull buildpack-deps@sha256:d1777ebffda1a243361ee668849af5f254a4a87d155d4ad7bc28015d10e064d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34702448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60e5c41505d9a5234bd48f2cd688295a480c11220556dd95bff33d505d33097`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0194a259d72d58dff10d9ecd172d102a9ae7cca7399faec45df5aebe22c24fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3196223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865964662200a1b5bf337792c7efb790b40d98b18ccd7d6f69c19d8792d84e1a`

```dockerfile
```

-	Layers:
	-	`sha256:1b59bafa86ad31bc0e1b4617d32acc822bf0df163a11f9c783c6c5df816b840d`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 3.2 MB (3189262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498149050fe45bd7b37f4024e1ca7da3dd8f5488d04d9719eebeb4ab527101ac`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3151f831fcfee0e915f8983c32504a192512a20f6da3719f22705545e87bb238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42848017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b3416eaf626702b2d797c69f5eb5979b81081255dda1639f0c71a4ab6d78bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:21:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7192fd2ec6aeab42844efa7a3c3464380bbe0390589a83523f21dba5980eeb9e`  
		Last Modified: Wed, 09 Sep 2026 01:22:26 GMT  
		Size: 8.1 MB (8145338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c5c3db16ab97483f85c60c70c9f06c9940296ad88367c3d20fb8e5b8e8279f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ad0c855b69d04ecc95719563efd0a9d11fc9d79cd50e80768ceefaa9fd83d4`

```dockerfile
```

-	Layers:
	-	`sha256:77a50c9e2b5bcb7ddbbf9006ea5c44716a23900555578d5715a2f7beec6deaf7`  
		Last Modified: Wed, 09 Sep 2026 01:22:25 GMT  
		Size: 3.2 MB (3193631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e172b3f68b77ddf0ce15bb5409167ad940b15db4a3babf6fd4bc525e0d05af5`  
		Last Modified: Wed, 09 Sep 2026 01:22:25 GMT  
		Size: 6.9 KB (6913 bytes)  
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
