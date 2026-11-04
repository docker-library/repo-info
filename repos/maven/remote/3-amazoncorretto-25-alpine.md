## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:72666f966205b92e06fbc594925c8a9e8ac0d9641b0a08e3f16beac3cc51969b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:c997d88bb04decfe66b47f058365bfdfd04a778083d0308b5e288a9ede3442c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197649070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f903f63ed678fc5a20daa5566060d36eca4bdee055635aa085d23b17bbe592a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:40 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:40:40 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:40 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:09:45 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:09:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:09:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:09:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:09:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:09:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:09:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:09:45 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:09:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:09:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e01597ac1e0ae5880a75146e192763d95566a346662f0cd22b27e77b65af2d5`  
		Last Modified: Tue, 27 Oct 2026 16:40:59 GMT  
		Size: 181.5 MB (181518166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fb9ce321b1fe28a93d2c5a770402e2dd9c181cd4bd57d85e39f33c6db4f9f1`  
		Last Modified: Tue, 03 Nov 2026 23:09:53 GMT  
		Size: 2.2 MB (2217769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87c282114f79d267a1dfabcf5848755d0184056bb571e8bdb5c95e80ce06f97`  
		Last Modified: Tue, 03 Nov 2026 23:09:54 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a95e0d45fb3823cbf42b060831fdeb1b2b870a5a1d6088d480f4761fb98fc11`  
		Last Modified: Tue, 03 Nov 2026 23:09:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9432a61f60dc149022a6c2c29f96f7a7eb9b002a0bccfe40aa79bc2151f07513`  
		Last Modified: Tue, 03 Nov 2026 23:09:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:74bd3a272f348b5beddf5ebe168f3859fcc4365ec15986df4fc6ed5971eed918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **757.0 KB (757009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638590901c1db6bcb17e95a78fbb3eeac1c80ca233ba3da253a9346d5c1e42f4`

```dockerfile
```

-	Layers:
	-	`sha256:fb87575221523945aae396fa1d07e104186bf15c61926a315fd946fe88f08833`  
		Last Modified: Tue, 03 Nov 2026 23:09:53 GMT  
		Size: 742.5 KB (742477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568cdf5eac04aa02c919846d010eebf1a58a2eaa530b2229cb774cb2942ed9ba`  
		Last Modified: Tue, 03 Nov 2026 23:09:53 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:05e8918abce3a0634a3f587124e02ef3b16b5fa30712ae1ed2eea9c55cf9a62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195599395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda75804506bf3779f9dcfc11cee094e663fe41b2dbf2a780dbf4a803bb2feb8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:14 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:14 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:15:58 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:15:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:15:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:15:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:15:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:15:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:15:58 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:15:58 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:15:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:15:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:15:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9836628083289df154df91e6e5036abc886f826a723f4b41108da095d307980`  
		Last Modified: Tue, 27 Oct 2026 16:41:35 GMT  
		Size: 179.1 MB (179092361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f2798f356e901e088ec4994d94d63cb4ceaa9fc2a954f9d3cd2bf8fbff0a52`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 2.3 MB (2256577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ed9191df43c9f09a0e2dfe24a4ac449dfb4f4c1945f2e3788fb1c7dd1aaef0`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b700960b7fa1196b87b0ce0804060857ecda6035f7762eb728da8aca3442356`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc047cb56a98685bdd6c00149532de641f6005672b8d1845f67d2aa333934a`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:380752a3f3934ec137d47bc78d19145183ca86ea987484f5ccdcb49f05802482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.9 KB (755896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b5b9a862d0b5b3af7cbddb07aaaada6983fa5c75ffcd073113e37602ebacaa`

```dockerfile
```

-	Layers:
	-	`sha256:d7b9dc6c81dbd28bc7acf4197a0a5967535b2238e4c9ec9c48de397bdca8cf81`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 741.2 KB (741231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e065dff860107c0f848e68d61874414e15ea17de0e5a6d02d3cbe46c8852e3b1`  
		Last Modified: Tue, 03 Nov 2026 23:16:06 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
