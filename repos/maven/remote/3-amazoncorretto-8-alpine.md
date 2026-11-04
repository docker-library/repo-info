## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:8fba2b615d47871746fab96e8257c6804f42d87a4f7ea851c4ec05de67406ddf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:09c747c62a497ab7c8395e15856c2cf67ea0ea88c787744e5e2997308cf88231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116984524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8ae6d01d3466c8cd0702d50feb50ac9e8ababddfbd87ad5cea6f7a0f868bc3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:29 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:29 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:29 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:10:30 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:10:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:10:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:10:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:10:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:10:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:10:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:10:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:10:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:10:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:10:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b850ea37a0f54e9b52c53238e377e434be29cb50a1af34a94b8e8752be39d3`  
		Last Modified: Tue, 27 Oct 2026 16:39:42 GMT  
		Size: 100.9 MB (100865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd3d1cdbc2ab15b86321b374881fb8401547f11b10e0bfd6feea9bb48fabfd5`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 2.2 MB (2205636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2d5696200983c003ef50cfa5c3779d1ea17b0fd495a6944391b0331f6148ad`  
		Last Modified: Tue, 03 Nov 2026 23:10:38 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900f835394a5b515d5e44470c0b1a42d615630f60a17d67bf81f6f1b4eacf145`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2aa21ceebc7d175a1f4ebb18f38a477ff8d3bcf452a5230de48d3f6938f5d8`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:f1a20a4767236d7e4cf087e57f2ea904da979ae9b2513d606241614c0e5eca69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 KB (411887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9f7e27400faae33c65ea37068d26c0d23bb3d80ac5abf842aa01fa5da60e5a`

```dockerfile
```

-	Layers:
	-	`sha256:ddb34b370d9a30bea1866100669b5368d3d3a67e44acb84a213d7da265cab07a`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 397.4 KB (397368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd85bf885e8f7938ea1673432266b0cf316089fa905649e45d182bab69b31b35`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 14.5 KB (14519 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0ff10e743dff12659fff95d6fb979ff3e10e41ac36b33f495c2ece79da36aa6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117189544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a233397a6d8bf77dfa3084a7ec8823c0f5a2f71d59707f5cd95a964a7a56bf6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:16:32 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:16:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:16:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:16:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:16:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:16:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:16:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:16:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:16:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:16:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:16:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c70e3c58972aac4144fd11a131201483c7ddc200babd824668d0c64a2a17ef8`  
		Last Modified: Tue, 27 Oct 2026 16:40:18 GMT  
		Size: 100.7 MB (100694205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2c667be9276a697ffb308cc14100ba769a9408dc2b0725a6b5b0b25b25ff40`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 2.2 MB (2244873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827d8be3c551ce424b9f67527d7814cd3852672f170e94656f5ef10031ea34b7`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 10.1 MB (10058973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2fde0b4da928d3288df944c13ff48fd2cc6e5f1ad87a52788d16212c8f96de`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab86091ac68bf6579049152a82802e96230fc1e2038edd7ed46d6854f1638890`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:eb7c390868db4b9f166488d26c9bee14abc569f004d302c6eea0b687a1c1d79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 KB (411490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e3f85671d46e27a302a1186e2fd7975f4c77eeafac50baaec95922fa7a7673`

```dockerfile
```

-	Layers:
	-	`sha256:730c7ed2fdb6f5b1858819d72ec693010e205b4e326edcaa105c65757cb60db1`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 396.8 KB (396838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adbc465ca7ebba360c18dd553ce7c0285e1ab328e7ccf7081a8cccd2bf38a69c`  
		Last Modified: Tue, 03 Nov 2026 23:16:40 GMT  
		Size: 14.7 KB (14652 bytes)  
		MIME: application/vnd.in-toto+json
