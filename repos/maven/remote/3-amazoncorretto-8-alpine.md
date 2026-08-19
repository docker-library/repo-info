## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:d96a454c1f957b81c914bd954c76884700dc84286584ea328f1bae8b4d0e3227
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:f23292ef42a93b086ffe9e1add1b00d4933f358074674547f5d9ec739e5bf48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116238328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22406ea812e631a2f9cf34116faa15e64e031f093f87fb555a1340d436858c64`
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
# Tue, 18 Aug 2026 21:29:42 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:29:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:42 GMT
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
	-	`sha256:c567459f0888facb323e91e69d8e4d8acd44c5d49e31bb910b4d8cc376b2c279`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 2.2 MB (2205185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d05aa27a80f2d89e02b849584be54a26e91f4c4c66d34d49c517e1ea83d971`  
		Last Modified: Tue, 18 Aug 2026 21:29:50 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755eee9aa35991e63559ccd3918b23d8d6cdfc176c0a5d740c2682d3e06ce4fd`  
		Last Modified: Tue, 18 Aug 2026 21:29:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e674846e1121daf4d5587f93d63fc1f2172da8303f8777a49b456bbd21581683`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:5fba8490c9c22e0c0b298930d920967301b0e2422e56adf55fee14198967f1be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.8 KB (406830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c73fb2dc0a289c84f1bf106ac955faa9d087a8d5828e0bc561e5a70762853c`

```dockerfile
```

-	Layers:
	-	`sha256:4dee0e4c6f63e3f6d301a56f714a474b540a140bf177de660f454a58c9f87553`  
		Last Modified: Tue, 18 Aug 2026 21:29:50 GMT  
		Size: 392.3 KB (392318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9da1585937acbfe0b1915607d110f17014142f09517312c65564f0fa3a7b3cb5`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 14.5 KB (14512 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f4969295aa1d640866772059852de17d968bbe02163ee87497283d1afec2e26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116446003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad50c5b6887afa6eeecfb2d144facf77f5aa9fe330a694e5ec28db03cf3d330`
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
# Tue, 18 Aug 2026 21:29:36 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:29:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:36 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:36 GMT
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
	-	`sha256:bcf80be80c2f3722db97b337a6d5173dea559273d60410333846574c800fd5a6`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 2.2 MB (2244271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55aaa91124e7418c1f387cbbb1f85c65daf2014ff22ee7c53118d90e89175e78`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e405a38b25bff37c0d7fb93691da42b267e2f7cad34730852f131988fbccbe`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fddc8507d65d05c129f9d36f0577ef4fbcd15147c8edd4f138d73b4c56e0200`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:62e779760ad2079a9fdacac90f6a0182ce1c622bda51ecef5826ec5e6cfe58be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 KB (406434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cfc4f5f3be3c682dce3047d5b45577830eae3341261891a6d42a01eb1cf917`

```dockerfile
```

-	Layers:
	-	`sha256:ca7e1f13e4a353cc1c022a2f4535e3b2f77d1388a18838c23e4ec237e05432ce`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 391.8 KB (391788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7807fcef34f829fa57f2d3aae196cdc6aab6b6d44bb8168d28c13d8a4fab8f55`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 14.6 KB (14646 bytes)  
		MIME: application/vnd.in-toto+json
