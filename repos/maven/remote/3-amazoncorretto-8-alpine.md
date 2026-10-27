## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:2e32326c4c97f58c9be6331cd86bc45cd08930ba30d8e5058916fec4fd353993
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:58ba8075afeacab47aae875c0ed46e08e64978b671dc3d4a7aabbe026c179968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116984498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694f2aa806a7cc0c1c87f6766650cf885e0fe0a9126906bc4bc4d30c8f5d9bff`
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
# Tue, 27 Oct 2026 17:11:19 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 27 Oct 2026 17:11:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 17:11:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 17:11:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 17:11:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 17:11:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 17:11:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 17:11:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:11:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 17:11:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 17:11:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 17:11:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 17:11:20 GMT
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
	-	`sha256:1aca45031bad7ac79070cf7e2c652444712cac5d0c23e4e797851a30f29f5772`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 2.2 MB (2205616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc7347d6b3f99d9a40b154a5491729aea0cefb2bc275bdca16f651f8b375f76`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17395ab3104a329c81ff37211ffb286916b315b2aa1f75d6d9892eaf6af72852`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9e71241b00369c8a6180cc50a4ebb27fb3b5680b8f982fe3f9c5e8cc469863`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:64be573c6f3d8c27171e19c6112acda17370599a58353ae242a1057c9d0e8850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 KB (411887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dcf8caaeea5dfaa9dffe459c9d8c754f5ce0a8fde7a7d1de3843bd7f6785bea`

```dockerfile
```

-	Layers:
	-	`sha256:9102b3256c71c43f301416ee000469993012313d2bc4ecfe88694109b73a0b56`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 397.4 KB (397368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:230b8f3bad37b70937523dc9c7342d916c3e0045539a70aad9ccc1fd750175fe`  
		Last Modified: Tue, 27 Oct 2026 17:11:27 GMT  
		Size: 14.5 KB (14519 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d3d5cae54d7b3ec455a3275021c2b1d1d4391c2c3224af3d0216f604d3adc867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117189574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85424a8a81d2fc20d265eed5fb0c8c9b78e7edea56ea09ce0a339ed2e25fa9f`
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
# Tue, 27 Oct 2026 17:13:31 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 27 Oct 2026 17:13:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 17:13:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 17:13:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 17:13:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 17:13:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 17:13:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 17:13:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:13:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 17:13:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 17:13:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 17:13:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 17:13:31 GMT
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
	-	`sha256:2cd1c6cf36a4cbe5bae8028f450d9e972592a95454df618623cd77e54fc81bf8`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 2.2 MB (2244856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2f276f7a02874380fce575f96290958d9489ab890d0b91c162ee8b5ec9109f`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162d5f12c608e6e687e6a4ba0de1678d0ca65bc8c6d2894e3be1f6ce6b1b9275`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a4a811ae214e43fadd02d627cfc35a6ee304be2f565bb316bc5bbf12f57153`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:cddf0ab0cb08a89d5e35f1b31b1bb9ced92dea96abc1121217f86413d0f58e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 KB (411490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e2fc4b5a2e1fab99ddb134bdfd0c8ef5345ab1518895154d14a67f2f43cd7d`

```dockerfile
```

-	Layers:
	-	`sha256:9db1ad1386ea285fbf75c30dd98e8345cdedf361d05f7b1259cc03df75d324b3`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 396.8 KB (396838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4802dddf49ba23b474383ab9eb4dffbba875c5f290898b207a0debc0e9b45436`  
		Last Modified: Tue, 27 Oct 2026 17:13:39 GMT  
		Size: 14.7 KB (14652 bytes)  
		MIME: application/vnd.in-toto+json
