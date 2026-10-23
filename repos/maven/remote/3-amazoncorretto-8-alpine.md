## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:b145d02c067070d73b693708e7ab2b46f993aaab0053829cb66e528abfa06d04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:31a241c91a4320883854418b2f6ec6461c6c2da37a0c926308f3e2bcc022ceed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116986857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcefbe5bc7b261bde2adfabf1228393d03bac0ac5746c6bfaefea593a3f45007`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:05 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:05 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:23:18 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 23 Oct 2026 18:23:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:23:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:23:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:23:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:23:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:23:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:23:19 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:23:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:23:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:23:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166a54335e11222deaa4cfcf51850137949ce2b7730d3d126075eb0bc46aa486`  
		Last Modified: Fri, 23 Oct 2026 18:07:19 GMT  
		Size: 100.9 MB (100868107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fca702c75129113d52b3a35b9ad0c1c50e9711533a975d20bea44642bee4c6`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 2.2 MB (2205620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81ec5433b8e6518a861c80072858e8246f50ec8f6af710d7f878a1552b1e01e`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed020aa18673e49f982e79846f9da2705dc48fd501e9b403d8240556c6de4a91`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ea0ff4d2f0fe6c796d4ba8bd8dd90caeb5d2798db71d44e049532fc5c3c687`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:f5e6ef8de46032a4a8331f01fceb8baa643ca89ded87ac469c9c6f748c3bf136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 KB (411887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89529554f4eddb8d3e99fdf4cb38115841e825e94a371a2788b12bfd2c31fe5`

```dockerfile
```

-	Layers:
	-	`sha256:282583780e065fca6bb2b257cb7c1a7bacba5e20e0e5b1d588f17fe834df4b95`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 397.4 KB (397368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cd3a828b8ea0740029e748c7ef8f01f1e98bb7599e755a3ebdc0a72e58ac137`  
		Last Modified: Fri, 23 Oct 2026 18:23:26 GMT  
		Size: 14.5 KB (14519 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8df04dd8fb737bddab6bdc319880e1e18949d14045988efab035f0aabae59c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117193084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f4597aff506e0d1473fc784e245ac3d4e2aa0dd8a00a74898ea17b2f0856be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:58 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:58 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:23:15 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 23 Oct 2026 18:23:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:23:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:23:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:23:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:23:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:23:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:23:15 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:23:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:23:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:23:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7d4160724892b437112ea9f1d35a800108f0fe429cd5c689ddb9855b8beb0b`  
		Last Modified: Fri, 23 Oct 2026 18:07:12 GMT  
		Size: 100.7 MB (100697751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490acb9ba60337824b57aa9d7895c3435b4399d48184115a29cd74a0583402b8`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 2.2 MB (2244828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee21125cfd8530489fbc63c6a97fa62355e9ccfa8e33915b2e833b605aca4054`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a09167d6109deeddd2c0855d3ee8b92b664bd91ff83f924fbf536aecdb8374c`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401119f3923088c8f42954b786c8920aa5bb393475e9c0e9804edcff67845599`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:c2176e2e9bd4119974f782f70f8aed87ffebb071e2bd54ce3aafa3996e411166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 KB (411490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2914400ea9ca5263c796adb1b4fb78c2cee4db58bccbd1a4b43c564efc20c079`

```dockerfile
```

-	Layers:
	-	`sha256:85e6e5732af1ddc6d39c873aaead917ed560bbd158d1c8ac37930ce6b5cdd47a`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 396.8 KB (396838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a4c0d96272b1a26d3bd9dc7fdd2fa7ded654e6ce65398ba9b9cd9ba037ed51`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 14.7 KB (14652 bytes)  
		MIME: application/vnd.in-toto+json
