## `amazoncorretto:8-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:2a84c9797bc6ab639a0a43e14cac5d12a4934270dbff244c3a06bb9c8e9682d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:da69c9ecba212c2e025022ae13b9bf9249797376c1ab8c97726680b813df244a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45463233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4446aa170cdfc6dd223279752aa049569bf63554efad1f84c5724a3bb80ce0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:03 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:03 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b442bcc2a9d6e6a43de8494bf8617d6e7774d14c1b3690bcc9fad6f00a9b297b`  
		Last Modified: Fri, 23 Oct 2026 18:07:13 GMT  
		Size: 41.8 MB (41837838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a6154244741f63c9939fc4b12908b6399906b14c5a7d4e7f9c16a04818fc0cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c051bbf3d0eccfcd1d1d62610513ac4e624ef88da13329b63a2101f89fd146de`

```dockerfile
```

-	Layers:
	-	`sha256:cebdec64dfccfb4e5ef00b4f2de7623cd69341da6db2c3f7b0891d44681a197f`  
		Last Modified: Fri, 23 Oct 2026 18:07:12 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cccc4375be9e7de399e97790056a7d2cf9335bad029c792e2153e0b6ce991440`  
		Last Modified: Fri, 23 Oct 2026 18:07:12 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bff33ffbedba5112350b8580a4f9b00b28b7f10c86d0a4d8981a2ed77e32575c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45563064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4caccbe6e6874d215d43bb1e1bcc26047505591ff24de72b96bbd4617f2204`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:55 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:55 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:55 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6be991fccd5cdd54b60fcd596b9318a2a6f61f8f09d314e64be395045e5460`  
		Last Modified: Fri, 23 Oct 2026 18:07:06 GMT  
		Size: 41.6 MB (41588693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0032655c4972cf21aa81e357516fa28c6ae8d140bec9dd1d6b13cd897e801202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d39594882b56583dc349da7e32b480cca51cc979f17cff0a02a1c38c9cd807`

```dockerfile
```

-	Layers:
	-	`sha256:7940272a05d37df88dde67e1b0f066eba1adf3e93c51f897f2ea1c2599afd95d`  
		Last Modified: Fri, 23 Oct 2026 18:07:05 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8e14a6ff675aad1a2b93050a1892b66860f4da6dca039d2ae54bbf73101a75b`  
		Last Modified: Fri, 23 Oct 2026 18:07:04 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
