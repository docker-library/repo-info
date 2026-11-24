## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:825a40d3c3b71fdf0b1f1ed87bc709edb39e33e3b1e781c6a81df45e59927cc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:5cc2b3f6a176ec24535b6b8e092876b18b95a15f665db1d01a869cad99410d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196969284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0645493997119608e47fa756f5d1808db6ffd3ebb1c850e0c4b93e27593c15`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:56 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:56 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 23 Nov 2026 20:12:33 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:12:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:12:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:12:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:12:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:12:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4700543510a61f921876f15fb15d33a2e42174d5e3c8d6271af05d6ea1833073`  
		Last Modified: Tue, 17 Nov 2026 21:35:15 GMT  
		Size: 181.5 MB (181545560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940dd10777868fc4b4d64f1e12573f8c93b82b4ff135245e06d5ba7626211cdd`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 2.2 MB (2217755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54f830ec735f311badd64cc97023f9f96eba50a4e339ee16ecb3af3d032f800`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2163615392649ee1cafe4d43213a35a6897870608b619f3a932c4296a1d06d9b`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d29b4f4283e70f23ed6273782b569dc7a46da1811faea4001b933b37f13a4e`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:1c4bae5db93040bf07652e1a77c51cfc426a0fcaf3197ee1b5b3afce248e1a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.7 KB (750701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e543d9d29a234fefff09f06fef96a42cf99b4f2a01a0a862071c2284ae1c70a9`

```dockerfile
```

-	Layers:
	-	`sha256:8fbe498a23ccd232206559035d3a8c7b5627c6d647a4e11ae39c0c4d8b77d77e`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 736.2 KB (736173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:590f3f743250dffac011724e25a95cbb8651d07a67214a71dc1955f75f71f6f8`  
		Last Modified: Mon, 23 Nov 2026 20:12:41 GMT  
		Size: 14.5 KB (14528 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:02187f9b018d96e15c86f8fd17cf005c84afc8e6e09853c3d586eef21f7ed281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195611052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffed2e50c11b7401670e684bfac2671c04bfc9864bb0b2506aaf0294ae6b0745`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:55 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:55 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:14:03 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:14:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:04 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee16bb05063a1144fb2c65be130f34675a6a95bd089db06bda0b10a16d1dd65c`  
		Last Modified: Tue, 17 Nov 2026 21:35:18 GMT  
		Size: 179.1 MB (179103832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9966b0af416f2e0055cc057c45f7c2dba94ae23e116c2b61e66c268644243503`  
		Last Modified: Fri, 20 Nov 2026 06:14:11 GMT  
		Size: 2.3 MB (2256604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4acd921d90a42edde959a614e0238248656f76d4706fb99a088e17c6f9c793`  
		Last Modified: Fri, 20 Nov 2026 06:14:12 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912bc2617d969b0de3237ddff741b0033980bfee49eb40facd8bd45c2b24968c`  
		Last Modified: Fri, 20 Nov 2026 06:14:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8d255909c1cfd83f810a63d3f66dd5aedcef56173f6ac8b9e1cb97fe142bc9`  
		Last Modified: Fri, 20 Nov 2026 06:14:11 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:a25eccc41dd89ac1511e0b1b54b573831091e74466bdacb732ad2db2ddc8ab31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.9 KB (755898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52b4e8e76a8fd1c58c73cb0909a9a7b1e533d2ae0b8be659b9bf26fda479fde`

```dockerfile
```

-	Layers:
	-	`sha256:998b17125731c3390ad167fabbd90216db3d842f3bfca76f3bcd292e01dcaa8f`  
		Last Modified: Fri, 20 Nov 2026 06:14:11 GMT  
		Size: 741.2 KB (741233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b7b0f5c4a9cc4b4539b5cf01f745f9037332151d2b7883ea50d9b300f46ad2a`  
		Last Modified: Fri, 20 Nov 2026 06:14:11 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
