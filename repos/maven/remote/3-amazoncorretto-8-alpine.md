## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:121d85dd6979ca50f598cd578f2ce77feab993b38dcc29365c31c8f639a47caf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8fe12df69b9787873191b629f952c9e792daaf84d9e0bfbdd117ff2dd8a69972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116283530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed73605b4be9c1ea5b4be336933b23d4b2f5e1295aa56d3204392499c9f64b7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:56 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:56 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:56 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 23 Nov 2026 20:13:02 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Mon, 23 Nov 2026 20:13:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:02 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3f050ef40c7b21f48d5ed39a54ecaccebb123b035cd70b56ce187377a3618e`  
		Last Modified: Wed, 18 Nov 2026 02:46:10 GMT  
		Size: 100.9 MB (100871929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02df2b761903ebfff4d76e8e6ad6e219f5ede4a10e3bfca1a45182f0e5f3b4ed`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 2.2 MB (2205633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9829c657c8cec438d2458b3c865b2b0add65b86b1bf9bb29c976bb3f36616c73`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa1f75d4e87323b8d6266de66b69da967353c5515389ee9d7aff56b1b64213d`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7193a9978d53e7a79153822ede9136d1fe0ac994af4e5fa2014f4787d68c5e`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:328155667ca7c87381f923225cb82c9de8589e134b3013b398a29eb46640592a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 KB (405577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b53950e4c838e30d66e1985ca76e3690aa4f8e4935c9c426059e4aaf7b60532`

```dockerfile
```

-	Layers:
	-	`sha256:f9fdcf9f6fa383854a5ab60cae0b50aaa7adb6e49f41fe5d699dbd02cf5beabf`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 391.1 KB (391062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adab6a380f3e371bb99b04051f3dfa46c3ea2ae3bd10b73b731876d40bc9fa1b`  
		Last Modified: Mon, 23 Nov 2026 20:13:09 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ccec18a86ea760d9b88cb4dd812d756fd2097ab2c022bf84d351987aa724572b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117195141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7361c6879d8ea80a82784ea3aae7d8f21993a7e7f9eec37b6cae40cb755bc612`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:06 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:46:06 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:06 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:15:07 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:15:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e576624f05eb0f2521d62afbbdc2eb858a5cb3be712a470ca788f21e74350b0`  
		Last Modified: Wed, 18 Nov 2026 02:46:21 GMT  
		Size: 100.7 MB (100699676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8870b6ac7c69b8244dc4e27ea74968d7f0c9b9f9a0118e62e9c42d5411fe515`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 2.2 MB (2244848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6f175f405dd71b9783b95da537240363bfcac78d1b514b913acab363ccb060`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ba33f15860f5278befc6f3782e50d7cdaf6e060f62145b3f71dd02c902fffd`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ed828e8a3a643a3345b9caf038cccf6c24b064094e370b15af3bb48cead837`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4d2d0705f0749f2a18dfba3bd5a15e9ee42a017441d53a40356f89e9e2d81c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 KB (411490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7bb3c11ab15eb562da066832ae6bf5a7d92b888663942ebe498675104d6f88`

```dockerfile
```

-	Layers:
	-	`sha256:bb93f184a908545ef22bb95e88fb296d4db7293aabb6911afbdce4c829e87781`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 396.8 KB (396838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e61eb93022eb4e57c3394a4af64b94256f954c2d56aa34dcab67004cc452e1f2`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 14.7 KB (14652 bytes)  
		MIME: application/vnd.in-toto+json
