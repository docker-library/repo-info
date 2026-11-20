## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:3801d4ee1926901ce3d89f2558cc077ae3fa72348639c3d3ab89fa008fd93398
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:16fa3d1c122471686053603bb4edd8201cc966ac875c8dbcddec2fd62968eff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197676999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40a332af6f9619e6f727d820b8f2766c5b5d4b394800b91b294ec23f054b98c`
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
# Fri, 20 Nov 2026 06:17:09 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:17:09 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:17:09 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:09 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:09 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:17:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:17:09 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:17:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:17:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:17:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:17:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:17:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:17:09 GMT
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
	-	`sha256:332b901165175c1b9fd6b69b776cd86599696fd678325438cc04dc3e3012b71c`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 2.2 MB (2217742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8078900f0a223890a6407cb885406b5cd81baaefb34d266dc1a0e7739cf7dff`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb4a9bff86ba4b347e8fc9ea6c2e57fc7fe624d776127a3541a69874c2d6210`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e04234874d8eb2ea30a733f29a734b65a7ef78741ac822c21c01f80f3d34d9`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:178f69978217d380d34aeaf1b9c7249b8f26eab39fa2e9712b18d92e89e0e409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **757.0 KB (757011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8dac3c42a04d151f58658bf372dc8099d315922923560b52ce5ea6a6828eb8`

```dockerfile
```

-	Layers:
	-	`sha256:34025cf457f91474b1ed2508d76de2d920fd2fc4e39250c59319ffcb45d1642e`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 742.5 KB (742479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:337cc0f04a2cf73243705b492e43519fda6a53823a6b75747f6ae12b7461a5c5`  
		Last Modified: Fri, 20 Nov 2026 06:17:17 GMT  
		Size: 14.5 KB (14532 bytes)  
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
