## `maven:3-amazoncorretto-21-alpine`

```console
$ docker pull maven@sha256:23dd243bea7220c96436e377f0b19452a02720a7e44e89f7dd16b883e2eb08a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e40b23e5609f276e8af9cd45005d5ade475ac90c3ff649cb06199be962e252f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177622275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e868505b2f11f7ea33a2948297fbabb7d5cf239835205fb0a82b43e32f78fe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:40 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:40 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:40 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:15:43 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 24 Jul 2026 00:15:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:15:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:15:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:15:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:15:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:15:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:15:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:15:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:15:43 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:15:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:15:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:15:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c521f0d50d490016926fc532cd90579c5e825a0288421980d029766d60e9b`  
		Last Modified: Thu, 23 Jul 2026 23:12:59 GMT  
		Size: 162.2 MB (162199278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3b4af5b92e182438786366abf2064ce1d376b1f1be575b7caee5389a781f25`  
		Last Modified: Fri, 24 Jul 2026 00:15:53 GMT  
		Size: 2.2 MB (2215621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4021978cfba00026786ef63458bea49d6fd56003da2b4289b6867faffb5c35`  
		Last Modified: Fri, 24 Jul 2026 00:15:52 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29f31c23e6f6a60120cadcca665cf2a5014fb0ce2438ea491b33eef81f75f72`  
		Last Modified: Fri, 24 Jul 2026 00:15:52 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107fdc271e62f0a8413015017dceecbc95f06767d9e0b76e38bb58876da91623`  
		Last Modified: Fri, 24 Jul 2026 00:15:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d35471040a684764f427480ba7f75933d07eb61368689e13150302974b12bf52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.9 KB (742853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f291c939befd7f17a30b5e74227fa68712dc18ad99f52ec3b78821e2e9510ee0`

```dockerfile
```

-	Layers:
	-	`sha256:8a63ba4a6c0eb2aa31218e6fd80e80f6ee356f7f8056ae5c2d961b257ec10635`  
		Last Modified: Fri, 24 Jul 2026 00:15:51 GMT  
		Size: 728.3 KB (728327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83f0883bf72b7627fa90eb03a7fcb8a0ff8815c9a70f655d32d2a656a787104b`  
		Last Modified: Fri, 24 Jul 2026 00:15:54 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c7675babda8df620c35414d69f77aeff99490d5e7fe5d69640d8fa39d2283793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175988384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38278825faee48a83eabfd1e0e820cfc352b61b7936dfb1988bc80b38661b2e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:26 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:26 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:15:42 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 24 Jul 2026 00:15:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:15:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:15:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:15:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:15:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:15:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:15:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:15:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:15:42 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:15:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:15:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:15:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969fb27132d828c1fa2a9465bbe0040ab0c45c6dde2ead58da2ebadcc48d1c48`  
		Last Modified: Thu, 23 Jul 2026 23:14:46 GMT  
		Size: 160.2 MB (160188613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8903aecb059e838ffc5f76e60b8fb42308fc0157031e988b3c67b0cf6a626`  
		Last Modified: Fri, 24 Jul 2026 00:15:50 GMT  
		Size: 2.3 MB (2255751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4a04e102bb5e9a4d17e56f7d4ff3f7aa043ef433b0b059a7c5d8ede5c3a4b0`  
		Last Modified: Fri, 24 Jul 2026 00:15:53 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e51f771820b97ef40e4d35f02112b9607ceda24bdb5a78d9b75f0006a21e3d`  
		Last Modified: Fri, 24 Jul 2026 00:15:50 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4c761f8d31cd942d588e105874e8e4e3c188cae60fa2b285ababd9e25d8ae9`  
		Last Modified: Fri, 24 Jul 2026 00:15:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:fb6b70642f478ef63a52fb7c6cfa23a9f451e6deacd219623029252c419dcb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.7 KB (741743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fdfb05ebf8e985c7cc8e966956138984db6db9fb9da2f5fa6fca804436b042c`

```dockerfile
```

-	Layers:
	-	`sha256:2d5143b2c2a062cf9fbfd4c035c2b46219bafb7751af18c087d02e3ecdb2784f`  
		Last Modified: Fri, 24 Jul 2026 00:15:52 GMT  
		Size: 727.1 KB (727084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f0689a4c174ec48260d7d7f8702196255841ffa77dc02c3fb61827513ca7af1`  
		Last Modified: Fri, 24 Jul 2026 00:15:51 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
