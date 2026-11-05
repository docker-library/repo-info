## `maven:3-amazoncorretto-27-alpine`

```console
$ docker pull maven@sha256:8fba396a78aa184fe8446ac00ec59362149216ada7edd232cd02ab42f347f8d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:55c5284d50a6fd727d6843ab63249f19ee4a59e7a1784320dbf5779432585e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199564369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab31a684f34d157e5914ecff9874ac8403e0d0af4d96fa4dfc2c8bee088a8b5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:45 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:45 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:34:54 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 20:34:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 20:34:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:34:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:34:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 20:34:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 20:34:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 20:34:54 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 20:34:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 20:34:54 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 20:34:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 20:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 20:34:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddca7f666775d66b64aad9b01ee7e3c9894559cc08fa4f497270dcf3593184d9`  
		Last Modified: Thu, 05 Nov 2026 19:15:06 GMT  
		Size: 183.4 MB (183433706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f614ddb53e789185739a394716fa92c7c0d2b758c7275733bc5a5d20be20ef`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 2.2 MB (2216972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af4e8888185f96be6231c73f02b25407ac1862f4c785b11c560fce8235e8e4`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76be56d818f1cebdd3df44c1353f2861e61d39e1a5dd27c7f143aa2ebac3b983`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6591a4e1e63db0649380dcbe856b76cc25410a565024885673b34676d88bdce5`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:aab8f19c02180385ed3ac863845ab311bf9f844bd24a183f58878bdafbeaf109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.6 KB (742573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df52b2c7ed36515f897c3c1f56b201fb246364a1e886aed83655089249ae9909`

```dockerfile
```

-	Layers:
	-	`sha256:b7ebabd49521c9ce9a1afd334253bc8c4946b765e6039decd5f332eab1ae292e`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 728.0 KB (728041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7358a9a05d5e3ad47c3d400174cc35a93d8b7d60809be07eb489bc03fba73e64`  
		Last Modified: Thu, 05 Nov 2026 20:35:03 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:066dd8be0bd6b7a67c7d66803a6854182d008c546c21f9f3e2b8355313c6ea57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197566503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35605a7c2d05340784a4fcb033ffb1a67a972d0809e0be968fe005af87cf7e9f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:28 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:10:28 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:10:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:10:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 21:40:47 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 21:40:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 21:40:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:40:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:40:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 21:40:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 21:40:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 21:40:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 21:40:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 21:40:47 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 21:40:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 21:40:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 21:40:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4c764e281d51eccfe586451a68aafdd55690ddceec8fdbcf5a44783aab88c7`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 181.1 MB (181059657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7790662fbb043a74a875b65fff711f090b92b194cf223df3bab958b72843ee`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 2.3 MB (2256267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00121983dea20d0a83765912bcd1255c4796219d86eea1748c15a1559c785079`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 10.1 MB (10058978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a45b0deb9c98f10786dec11ace36f9a3cd6dc5aa01d0fde1bfb7669ab0e4ed`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932be27e0eecc46881964dc042c5eac1e937a70f165b2830805d9139f0ea9b46`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:b15e22929f4307dcf4b8d4c3d23cf966de57caacfe7105c0303caa74eab04f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.5 KB (741458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df55ca526fc84b16fd5e95af9765ca9720d10c19b74f4cf06b0adef023f8c5bb`

```dockerfile
```

-	Layers:
	-	`sha256:c7b49711a19c313e4ca40d0c50cfc91433fe9454aee26d19cb65088eee8283db`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 726.8 KB (726795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23938f68ed18c2e357a50961cb40dfad75c741a15f16126b65819d3508948298`  
		Last Modified: Thu, 05 Nov 2026 21:40:55 GMT  
		Size: 14.7 KB (14663 bytes)  
		MIME: application/vnd.in-toto+json
