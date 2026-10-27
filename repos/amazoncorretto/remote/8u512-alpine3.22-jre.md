## `amazoncorretto:8u512-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:96022d6727c9125d1edcb797f4753214804a9b1de80a05c68111f7713d815080
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4475947d467dd097d08068977bea639750a9e1adcc636dfa19f894bff6c1074a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45626998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a905b04eb2b6ae9df8036026999f653de4b1d35613ec5cd318a56f03524bdb8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:17 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:17 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:17 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0dea728f0c876775785c87738f69f4741c8e66267ab82f3a51bf4761fe4ffc`  
		Last Modified: Tue, 27 Oct 2026 16:39:28 GMT  
		Size: 41.8 MB (41832641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f4b54aaf3cb658c582ae990141d69cc24beaa8b18aec9d8c66d28f0bf1e31b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a72881d10748698f91fa44384167a01a3a8b615ed2705fc8d7488150de97819`

```dockerfile
```

-	Layers:
	-	`sha256:a0feda78c93624bae322bffe81fdd2848e1f604bdaf7673405bd6ec4694730e3`  
		Last Modified: Tue, 27 Oct 2026 16:39:26 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef182fb69586a233dc111e79cd6c94eefe8174817e5f6c79bf042b2cd75db810`  
		Last Modified: Tue, 27 Oct 2026 16:39:26 GMT  
		Size: 8.7 KB (8655 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:70ad7a4a7a2e32615c95848fd57dea81e8d1123eaaa2325783068629b1df7c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45716610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f5c4abf961aad258fb09f1a0d6131cfe26db17d79b9ea3eb1d2ed418a596aa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:45 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:45 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:45 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e96d4cf2eab0b82a3fef742cb9ca7b4bc6683ea52f87731444604abc13ec84`  
		Last Modified: Tue, 27 Oct 2026 16:39:55 GMT  
		Size: 41.6 MB (41589229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ce687698476991acb93202770585c656080a4bc284ee3607ad584a52264ba8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c29498362d7fc42ee45166e026c3b76774210adc48dc001478176985cf1f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ce96d9969d0ee96783aafcbeccf58b8d0ffa34cd87a254d8218235c07dda5be`  
		Last Modified: Tue, 27 Oct 2026 16:39:54 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b02031d43d536c8028abd0d80e68d3c3d0fa1b128da44c9fc7efd64ba29abb6`  
		Last Modified: Tue, 27 Oct 2026 16:39:54 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
