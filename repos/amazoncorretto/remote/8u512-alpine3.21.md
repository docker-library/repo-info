## `amazoncorretto:8u512-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:cec49aef20614667e1dc55159124cb1804b6c2c793f8f5c4cb29d137e1434d6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ab6ba326f088518d4a4a705ada244091e74b9bd831b99a775c24924e8b827684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104490620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a67aa3f359588a7419e938564dddaa45940ca243275ab3cdc8e7051c7ed1352`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:00 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:00 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:00 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39d80e42240ddb8899408117e28f595a42c5d8bd0f9b06e064e4ebdd93e06f2`  
		Last Modified: Tue, 27 Oct 2026 16:39:14 GMT  
		Size: 100.9 MB (100865225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:133ad345ad42a89babd210f7cbb542241dd9b4ac663d433a531db17d01ccdb50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b0afff83bdbc024ba4bcc9c138d94230644f690350054b354339d736ec8a7b`

```dockerfile
```

-	Layers:
	-	`sha256:bb8ecc02b58a10dc34bb9ac43653579d8d98419606deab762c95d3453cda0e15`  
		Last Modified: Tue, 27 Oct 2026 16:39:11 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d11fba86cecb13dda0a89cda90457601391a8189c51ba7fb830d78907bb1151`  
		Last Modified: Tue, 27 Oct 2026 16:39:11 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c7bf3aecce9a3618466a607bbfba34d4b6ef555056d3b2ee9696c51136547e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104668410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0ebbacd11a568889d5a0427e718c9dc8c6fdd82b5894ebed01c9344ef6b475`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:39 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:39 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:39 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2b270cc43b0030fdd3c30980c6aae0426f1546b8733f27755e67a7859f614b`  
		Last Modified: Tue, 27 Oct 2026 16:39:53 GMT  
		Size: 100.7 MB (100694039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e3acc0c70cc29c552df663ada90f5fb94de4f780bb487a49231f626b0eb7e6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0ac09d517af80be90d203b92c7130a043381e79f3992805d3c9b614c3691fe`

```dockerfile
```

-	Layers:
	-	`sha256:e035b8f7ddcdacf22e554e1a5279d32933d9fc643e19495aa76310b7912605c6`  
		Last Modified: Tue, 27 Oct 2026 16:39:51 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22e4307734805b302b5a8aed5eeed97d25509a8b460790f539f552a06305a58f`  
		Last Modified: Tue, 27 Oct 2026 16:39:50 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
