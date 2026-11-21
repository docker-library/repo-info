## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:97f3f4d6ae1c6131e7396b348c40914202fc190d4c57111c155c3727769bd3d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6ed7ffbb91f7995239b4c014a2c167031d45e74459c840c3cf6c83a4a12b7ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165359956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2df3974e8fad4282d1673da87ae20a7ac03a3dcdb66d8c978e9dbfe7a17bd55`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:44 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:44 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 19:08:04 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 19:08:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:08:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:08:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:08:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:08:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:08:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:08:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:08:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:08:04 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:08:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:08:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:08:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95797276e73e66fcdff0ab1985c8374722b08b89a5100061ceacca9ac117467`  
		Last Modified: Tue, 17 Nov 2026 21:34:00 GMT  
		Size: 149.2 MB (149229779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c9478abe29c5ceb573fe8e387862384b7ed8ed5c1e2c4d9c2606286933aa1`  
		Last Modified: Fri, 20 Nov 2026 19:08:11 GMT  
		Size: 2.2 MB (2216490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160beb54839c5ea7000b586b5c404b4be51b7c60f692fc6228322e18e2827619`  
		Last Modified: Fri, 20 Nov 2026 19:08:12 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c10f10fad091b1cfd99d863115a22c43dc85c7e54fbf5c0b837598fd914c94`  
		Last Modified: Fri, 20 Nov 2026 19:08:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4708b4f1a79e5e0946ba01116e642809f00bcdfcdddad30ea7969c69d6aed649`  
		Last Modified: Fri, 20 Nov 2026 19:08:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4c7535320cbea4e5e9327c4155b0f36158e79b2d26dd696fef95ab9c0b95a745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.0 KB (748008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56d8779b76f059e7cc3ef47d34d5741070598e640e956cece48864246cd19af`

```dockerfile
```

-	Layers:
	-	`sha256:bcb2cdb0c2842a1c5f9d4fa6812874e3fc0486cdbf49f036e01f64aede87b691`  
		Last Modified: Fri, 20 Nov 2026 19:08:11 GMT  
		Size: 733.5 KB (733478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96971fe27d31675d1bfb340e6cf153b5f0e8845f55ebb9b6fc51a586d007a8fc`  
		Last Modified: Fri, 20 Nov 2026 19:08:11 GMT  
		Size: 14.5 KB (14530 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:17c99b66a9e18100c0de38025432bbdf2e0f3cd3a759e35396dbb690aad225ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164222502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75206245a6836acd7b1615cd8ee5e921a4eb84467e313a3c4af2ada28105b6d1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:45 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:45 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:45 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:13:01 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7442f375da949080f7de01e62281119d6d722d528c0874e3815bdbf11cc206f`  
		Last Modified: Tue, 17 Nov 2026 21:34:03 GMT  
		Size: 147.7 MB (147715739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf0c2c38706859cadcf0f2782477491ce0b7c805ac8cc35e29dbce07e737f8a`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 2.3 MB (2256154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a28334fdc5ce28c052a33f17896f7a40451c0f5b531ad967643a642b66a9874`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2154617dfdd74848c00db2d3f745a307a5afdd0a145dceebd93395fd0751d6b`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a8f5103066a8a889d4a08f1e249385e691b5708e25da0d3f9c2143b277a411`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4a629501c5a9d0a0d3209aacba732914422b0dd60f36341e3662e9485781cf42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 KB (746900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d2da9256ba988532012c3effddc3434ef242f306410f4dc204549e67c1335d`

```dockerfile
```

-	Layers:
	-	`sha256:78987359f16a2b189e0340063f9c5710f18c203455dbd8e06f1246d97165d0fb`  
		Last Modified: Fri, 20 Nov 2026 06:13:09 GMT  
		Size: 732.2 KB (732235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0857af98a1fb590acbfba7fe13c4ade331eb569a56ddf4d7454a29fc8031dcbf`  
		Last Modified: Fri, 20 Nov 2026 06:13:08 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
