## `amazoncorretto:17-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:258a5ea1fe5e95a456617cb022c3b52e5dcf0d9cd85533fb2064ee33016ac640
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3628a56a6ef833241f299c11d7cf61d1ae45a628ae3c5193b6b00a27e6c8b087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152808465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc363de06a684a32627c5e8eb1b43351505dab1ac16584454821d5d67a773d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:23 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:23 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d6109a9adaaa53c9b273e5357a6a0149c0f9819499001df83dc261dbee22a6`  
		Last Modified: Fri, 23 Oct 2026 18:08:40 GMT  
		Size: 149.2 MB (149183070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:31ba905379da4801fd09fdc3a594ac68a844af5e1c9c6f950030de04c7d16615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd1ec431b2023f0b8f3b3bb127f0cdfd29907f81f60c641d306e40fe3d6eb3d`

```dockerfile
```

-	Layers:
	-	`sha256:2063728bf70b8e0781b0f77f906f99b96bcf63980c7c5e9e7c4534cbb35d79a0`  
		Last Modified: Fri, 23 Oct 2026 18:08:37 GMT  
		Size: 587.2 KB (587209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:641b913b023803344ef0d5b3016e3bbd86bdb7b0f20da121c2a6383a1a4549b9`  
		Last Modified: Fri, 23 Oct 2026 18:08:37 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b4949591da4ca79fd20a124202baf5e0d9492d190f3f4e4db9d421edccc13fe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151646229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911d6de1781bc14e5dfa16ecc2d78a086b1e3671971a97c57a4e2ac217f214d3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:16 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:16 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:16 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e592999b9d2c49862d8fc89d48b0ff12b504e5587993a77a2285709b21fb2c9d`  
		Last Modified: Fri, 23 Oct 2026 18:08:35 GMT  
		Size: 147.7 MB (147671858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a3c14a566d720469bd050f276100bf4621c5d06cf3e0b89b3f5e9fb39b972cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34b805a4c1f7ad5d37d80ebfb4c24f76a117cab1faa9bd65dc04323389cf030`

```dockerfile
```

-	Layers:
	-	`sha256:acd0709ed76fdbea6ef1a2e226d22084b48ec3336896db68fb5cb6aad16455fd`  
		Last Modified: Fri, 23 Oct 2026 18:08:31 GMT  
		Size: 586.6 KB (586628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe7eb8c2bb88cee85f989ba9be4b9b3a74844ce7a93711f1518555b666414d8`  
		Last Modified: Fri, 23 Oct 2026 18:08:31 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
