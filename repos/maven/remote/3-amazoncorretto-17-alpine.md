## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:66be1132cebacb8fecb1d45134becd8935bb554a16190df7e41c87bed442ea38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e876c266e105ea384a6e993ba0d32813422012bffab71e5f3ad758192ee7f567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165088628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c313874740988a2a306978667978145e4f90fed8e18d7ffaccfa2bdf6f018a9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:54 GMT
ARG version=17.0.20.12.1
# Mon, 28 Sep 2026 18:03:54 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:54 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:11:34 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:11:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:34 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:34 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c470d9f3e7bb23017c7fcbbd3d2b12432db5ff01dd792bf5ead51de71014654`  
		Last Modified: Mon, 28 Sep 2026 18:04:10 GMT  
		Size: 149.0 MB (148962298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70ae23b432a6597395d31808da8f0ced33ea6971cfc9e1a81d8b34d2a17fb1f`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 2.2 MB (2216587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a67d636f79183a5c30f88881999445e4725fa3a94da30b65555cba036450c6`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2790f113f1ed8a46d93f65a939d049b82ad3762e2bc03e7e0b3a39c04a6a7d7`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b67070cf5d5d8a933c7df1229779904254566742c815b6c743ad8c3731efb8d`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:fa056a6a14d5d7530185ec46a04014c4015e10c1216ab86ab7f4c99222dc6c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.0 KB (748012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7505245cd11a3f5ba15fdf47fe4c89efccaec278783d134b6c2e32ebfda3f046`

```dockerfile
```

-	Layers:
	-	`sha256:40fbbca1f76caddeaa097a5f0d748474dd1da9b6fd66f4bdcb185cb129547587`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 733.5 KB (733480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70917f1cbea16e8e0c49d43375d6cd2bee412952901d830a1dd9b8b707fcde72`  
		Last Modified: Thu, 01 Oct 2026 20:11:42 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d72cddd9a28b4ff14475136d6c0494ecfe26d38fe7ffb24eb17d85a4da6c2d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163885227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7eaac247062f3c7a6edfaad6a8c0bcff20053e5d38eb3b19af488541f32898`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:35 GMT
ARG version=17.0.20.12.1
# Mon, 28 Sep 2026 18:03:35 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:35 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:11:06 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:11:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:07 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1c2874229cda9c9979aebf42074800618deeca0af610d920d425ca8bd919d9`  
		Last Modified: Mon, 28 Sep 2026 18:03:52 GMT  
		Size: 147.4 MB (147381446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a7db4cfe2f7dd168b88481d73fbb8af59d4e8ec42e4648bd34af1314396ee1`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 2.3 MB (2256125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d91e31f439239db56dc0a4705c72a8690705ae12286f3befe31dfbc3fdc5429`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 10.1 MB (10058995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e2979e45b54118993908c2bc290b1e786d00b5c18aa39350cc0e941ad3d1ed`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c77ff2a26fb0305547e8b54db02f3f2897ef65a14a7c572969a146cb3ba588`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d0c9e1f2026e296ac9aa2265f9247036bf2f5426d85d89da3553ca19923bc4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 KB (746901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2df97daa69466f8d6304626a4dbe146c01e2f40f0740448678a0df105ddc788`

```dockerfile
```

-	Layers:
	-	`sha256:75202fe5f574303e6eb0afb06194c11a6f1854ff831ff9f163d23d9744b31ac4`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 732.2 KB (732237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed949c371d6685e09f057cef8607bb49a23a03248bcf963ad9668037e965d63b`  
		Last Modified: Thu, 01 Oct 2026 20:11:14 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json
