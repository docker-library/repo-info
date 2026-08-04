## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:f9c275f54dc856ea19a09ee1cd66a67d24b1b15a2a5228342eb567bdeb64bb7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e01ccbbb8c16c91f4b9045da6e560889bac3a9f9ca4f796cb05a65dfb64473e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116238320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c32af77d4717b1c8b33f3ea352d0fd2936e493f4331da2622373778148996ec`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:56 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:56 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:10:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 04 Aug 2026 03:43:08 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 04 Aug 2026 03:43:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:08 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d918bc0343ea4b65bf85153e1ae80abedc865f26dd0744bd55b65e007792f897`  
		Last Modified: Thu, 23 Jul 2026 23:11:09 GMT  
		Size: 100.8 MB (100825772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9dac3fc33bed389853cddfc3faad67d3f846d880b0c84d294afbd8c3063e3c0`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 2.2 MB (2205176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb585ac902384117fb84c0c32b9d0229e05d2d47810bdff01f9fc0a8e84afdba`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e571208eeb3e78bffc0e15e2c871e32425595747acf7d3a6bfd9ada69a3c77`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc60011e5452f39c10f1c037983f688e5931396cbe45306aa6632c6c7d01159`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:8df4eba4baa8f1acf93b84f20410e67adfa8873f06be3cc25a2e67cabfd7d89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.8 KB (406831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd42776611b40bd5bc54708c058fa6c94883a8ba12ced39e0dfa930fc6a29c80`

```dockerfile
```

-	Layers:
	-	`sha256:6aa249f2f5e8bcaebbbbe494d8369f26a35a6cda6c0bedf8b174620fc1d81608`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 392.3 KB (392318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aedf5c2e60d466be65bb53ca72be6b9fff2af3e1a11afe0847997316422d7849`  
		Last Modified: Tue, 04 Aug 2026 03:43:16 GMT  
		Size: 14.5 KB (14513 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fe001142ca29e126d3d813b721369c8c47f218c2342289aeedfb543b34fc09f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116446012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14de13941e43fcb342457c39873767f503f0347fb0b32f4df07baf234606a8af`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:34 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:34 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:34 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 04 Aug 2026 03:42:55 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 04 Aug 2026 03:42:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:42:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:42:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:42:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:42:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:42:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:42:55 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:42:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:42:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:42:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdecdd98a8fa251b343b6d962c95627b160439151316f30ef7aa4373e951de3c`  
		Last Modified: Thu, 23 Jul 2026 23:12:48 GMT  
		Size: 100.7 MB (100657721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413978943758ebff9679dd23c5f1932cc26c09964d636339cdd18a6c6e2795f4`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 2.2 MB (2244272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff2c79baec50bd49860063c6d711c90569f2c6f2bc589a5ba42b86c9aa7b2e4`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be7ce99f768b41522118a354d8ae13d50492cc94796ef869ef5987980b2877a`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda8c6127db5386c30ec340ad32f91a762d1756c569ae0f15d968fe4150284d6`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ed3920413a19ce1f05a6b0b5d3b64ad331956d76ae3585330baf6a2f70debd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 KB (406433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9312c5dce8344ff36a52976475c70b067d84cf18505e409ceee3a8ccf7643e83`

```dockerfile
```

-	Layers:
	-	`sha256:136b202df57d6751ec2fb4c336462accc722a989bdf46c76ef40211a4de1997c`  
		Last Modified: Tue, 04 Aug 2026 03:43:02 GMT  
		Size: 391.8 KB (391788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2324df8fefbde82a4be9d466468ef41a82e1eab96015071c1acb3ab41cddc892`  
		Last Modified: Tue, 04 Aug 2026 03:43:02 GMT  
		Size: 14.6 KB (14645 bytes)  
		MIME: application/vnd.in-toto+json
