## `amazoncorretto:25-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:913df83df1a44f963aafd6d8484850e335de69918ca97d48510e73a98cdface7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d96f3f7177eea7ae567fc25d66c81435159a86c07ed69e6bd15efc9154d0a81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185116542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5780d5fe4094f7b36d1f10ae77e15e8e9bbd886017fbd06073aaec46d8f135bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:33 GMT
ARG version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:33 GMT
# ARGS: version=25.0.5.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12fa8616f45ac5b9275006de24066cb0710832de424e79d21ead68784190ea9`  
		Last Modified: Fri, 23 Oct 2026 18:09:53 GMT  
		Size: 181.5 MB (181491147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1e5bc68e9e0705b07e236279552af9c3ba8ed94ebde2611e2a40fb843230e591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28b3053d49e7c0148d0b69399916413bd0bc1e206e4180bc91b0f8707efb7ec`

```dockerfile
```

-	Layers:
	-	`sha256:550c1a349c755fd677650365818d2908118428b295539bd09211775e2a3fd280`  
		Last Modified: Fri, 23 Oct 2026 18:09:48 GMT  
		Size: 596.2 KB (596206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6be9a09e0fca5b99b1491f08e14cde10ee298811dd5579ced1f9da7c01fcae9e`  
		Last Modified: Fri, 23 Oct 2026 18:09:48 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3ba74d94baaa58e52263207bce1edc52f72fa55e3538d702a3992e9274d45643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183041445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b4e02085b59d74e0609168ef14b75c3c70398c1de4b4a1ced114b77b896fc0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:23 GMT
ARG version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:23 GMT
# ARGS: version=25.0.5.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a4f9d44e678bde2b2463cb4665d9ddaea96ed9e5bc2bf81ed48ef9007e6a67`  
		Last Modified: Fri, 23 Oct 2026 18:09:44 GMT  
		Size: 179.1 MB (179067074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e1525cf825ac49f33ba9199bb55bcb4f0fa4a71fb51ba93845471319a32da5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f6b33121b49a0404e230c9ba013e6467cc28d89c268faef7c0ad140a26ae88`

```dockerfile
```

-	Layers:
	-	`sha256:5bad1f6232c8071b5d31549fe86a3695b1a0d31fd9ca8a5c674584ea946ed88a`  
		Last Modified: Fri, 23 Oct 2026 18:09:40 GMT  
		Size: 595.6 KB (595622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f09a6f45901c0fa0395077e72cafead1498dcb5f60a51997e92f5b852d696cef`  
		Last Modified: Fri, 23 Oct 2026 18:09:40 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
