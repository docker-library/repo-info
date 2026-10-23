## `amazoncorretto:17-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:9e1156546b38ae39d6b35e218eeec8b29b1f5f062947396dc577e2d1e080f9a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:880c3d675f1a6631f60e75183a38640fb36cf1691c2fc9cd8e1166954833abcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153037628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e8bba0f8396fd4ba05aad418a30a88290e2cbe4d53876a854fdefbf60ec9fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:35 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:35 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:35 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0384678b49ebcf3993d6e5bbb222539904539a3f34dc73eee790166c4839c81f`  
		Last Modified: Fri, 23 Oct 2026 18:08:52 GMT  
		Size: 149.2 MB (149185401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:40e4faff05fd3d962300117b22e4ad7cd383100a4cc05bb4ba200f52e0cf8180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f1fc3039bc0de9f82567535e3fe5708b2cfa274f30d1d3fdc629cc93c19dd9`

```dockerfile
```

-	Layers:
	-	`sha256:3c808ca860ccac303e46e6c896de201cd1ef2c27395437e48e9d22d4797c663f`  
		Last Modified: Fri, 23 Oct 2026 18:08:49 GMT  
		Size: 582.5 KB (582503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d98d2656b3edcebd5915853ce09afee8516150268446d14cd03241baadaacfbd`  
		Last Modified: Fri, 23 Oct 2026 18:08:49 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:82eb18a69a121406db12dcf845c90b7bb9e7e27403868c54b55016513839b3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151869821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1b4b7356f080ea0b56721b321d510e4a7dcb36f5bef5900a7e71ef08165a6f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:25 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:25 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:25 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d90ec25217291e39516f081d43197d7f144818ab0d89e6306eef98ce8d5d2c8`  
		Last Modified: Fri, 23 Oct 2026 18:08:45 GMT  
		Size: 147.7 MB (147680327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:72b86215c443240bbf39392e563f4678884a17d663414a5e36f51b6368b6bddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363eb4c66ca555f08abf1b92da8a2a8669b094e9287d97357650165edc7ca5ef`

```dockerfile
```

-	Layers:
	-	`sha256:972534acc8d8aa358b5c5680259d3410a199e91b5cfbceee74f26ff0854c9eae`  
		Last Modified: Fri, 23 Oct 2026 18:08:40 GMT  
		Size: 581.3 KB (581272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8340928eb8e0187e006a833103d7af551f0a8c60b7fe371ad152edc67997ca`  
		Last Modified: Fri, 23 Oct 2026 18:08:40 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
