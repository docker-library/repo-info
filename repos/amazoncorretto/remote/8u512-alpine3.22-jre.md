## `amazoncorretto:8u512-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:a2ac15d5464f0874c6e330ec57734d565b83e6fde6c4ec849ec3c46e9f0056cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:99bb3009ebcd30dc0f1d92aa0ea2fdd578f2cb841f830130372ed492082969f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45628525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41330e51247c669500294abcd75b42ddf2d5350cf4daf7a48ba7dd2e6390b81`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:22 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:22 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:22 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e33822599ccc544e192fcc6547b88f84f94979b792c8114032e29ccb2a8d976`  
		Last Modified: Fri, 23 Oct 2026 18:07:32 GMT  
		Size: 41.8 MB (41834168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:90d4df7a0092b6f6e5eab7feaab267539d726595db0d839301de48744ee005f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f9a1b2c25828a6fce3a4bfe388fd17b2c6f2f5b7c73bfcde15ccf7c0dc5b7c`

```dockerfile
```

-	Layers:
	-	`sha256:4411c73d226c28c237b097b5066253ddda7a9d1e28650b07ada1ea55b7e254ba`  
		Last Modified: Fri, 23 Oct 2026 18:07:31 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf26f92d6a08a9600324277801175d39f9bc28192bf8e2d92b745d1955fa3cfb`  
		Last Modified: Fri, 23 Oct 2026 18:07:31 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9798e4eec33a539f8d82747b3436049295f6e7d15cce6ca16ad23b999c21810d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45713440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ea35b028a55d97d32d94f325f10503816c55100ab06d8c3ac80799a63c7a3f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:05 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:05 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e251ce81fe56de4c316db644071bcd6cbba6140e17858da33f2b4aa4261920`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 41.6 MB (41586059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4dc6a8caaa9672f2b8f78e0682e4d2a90d646e58798255245ebcb98684a17f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a13c9acbc07107b7065025a91b4d58e7171796ce091cdd7c658aa01fdba0104`

```dockerfile
```

-	Layers:
	-	`sha256:17243180abdc9543faeeed145c7c7f616546d07f283e4ee702b55000daf85fec`  
		Last Modified: Fri, 23 Oct 2026 18:07:14 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d22c0c7b27204f37880772a595a5590f5dec7778960f8325ec6932214a8c3c`  
		Last Modified: Fri, 23 Oct 2026 18:07:14 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
