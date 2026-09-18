## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:e7f289f66abe7d73bd5cdcf07016921be5668ac26bd8f1f4f58e85e8e0de2a74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8e2176c44e88866ad84360bc8a8644eee2f076a68b07fc4457f7e24ae740ff17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45663340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7bdd1d8e324cb9a381019bcbebaa42cb6c322324dfd2d6af254fd917d406df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:05 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:19:05 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:05 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2199240330f00b6e7b78f6be1d7ff03cc6c85d950ae14fb6e7a62a4b6f73ebf7`  
		Last Modified: Thu, 20 Aug 2026 17:19:15 GMT  
		Size: 41.8 MB (41816949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:60744f5827c7da9e9cd52f4d66ef958a0ff7931410319a9a8907c5333795d6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137f8062721a436a7072cfec3564e58645555fbeaea5f3eb264afdf4bf2d1835`

```dockerfile
```

-	Layers:
	-	`sha256:9bcebdb09cde01389644658a8b01342563c374eb1fdde503f9f97354542d2694`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c730dee71130bd535404ca3b4abbf861532e7bd0f0e0c6c81c93a93a10c62b`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dac50c1de80dd03adcbb4d88c7c0d40dab1a658cafdb96a6d69a6cc5df3a15ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45759264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02aeb4a6281466859e5a697159401bbe902a94b5ab2665b0da9af54f53dca0f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:52 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:52 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:52 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69428682e07071024d8fb8952a161c845e1b8c1b7b9c18ff70eed3cb39f0fb3`  
		Last Modified: Thu, 17 Sep 2026 21:36:02 GMT  
		Size: 41.6 MB (41571605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8f2b606fbc371042f7870b48602b6cbd4d869d73368e57883d0aec0ff58945ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14ee43b2f155b0595181c9d6dbed40a292461e104dd828083e937f8ea8e06b5`

```dockerfile
```

-	Layers:
	-	`sha256:36099e1cd08a1150e03a4b71753756cb2734fb5c00bf4763b1afbb420a16fe70`  
		Last Modified: Thu, 17 Sep 2026 21:36:01 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d198c4f552c269b4f59d8ee78dbb1b39fb15ebd2b62e45e610cf6c613c4ca89`  
		Last Modified: Thu, 17 Sep 2026 21:36:01 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
