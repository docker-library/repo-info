## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:a80b0474d68f8ebc05f6bb09e738102d2961e2d47b30b661b099d08968a40f5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:7504a285ce73a7add698d790346d1b989f069e62fe1518df3142f8013435d1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196946699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902deb6b29a87b01412a2c8244d86f55fc40f5bfeba8b51b1c30f26c106fd31b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:47:44 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:47:44 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:47:44 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:47:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:47:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 09 Sep 2026 04:42:27 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 09 Sep 2026 04:42:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:42:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:42:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:42:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:42:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:42:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:42:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:42:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:42:27 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:42:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:42:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:42:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1936334c7260e8b102923223a3f68ef189e93a7cbe0110ca22699ec402ba8d`  
		Last Modified: Thu, 20 Aug 2026 17:48:04 GMT  
		Size: 181.5 MB (181521535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b40e32cd32a6033f494b65134c5f5c488627f52a805a384872da9f763f64ff`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 2.2 MB (2217800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5db108bd71b3dfe9146dcebf217aa871d38d13808a666122d702f7297dd837`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e073c9c8616fa58696c2c269ae1a4b3b2376b3eab7e8a4dd78aa8b14de0869`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e31ef288f7456702aafa9ec047796d34f8e030732b697bd1c263a44f21bfa9`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:b234f89ec69850128771aabe8199d0ec48ebe7c7055165a6f5c2e609479bc085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.0 KB (751954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb740af836f47cade04d8df32abbf25953789334ad88b79306967c5ece326f6`

```dockerfile
```

-	Layers:
	-	`sha256:009c1db0bda62835be62928ab7d097dbf5dc475e3344033836fe9e28ac5e9b0e`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 737.4 KB (737429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba506ca1d751d08d19e951e87678177112d53f5c7eaec3844e54ba8a7ef1f5f8`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 14.5 KB (14525 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e4d57d12e69e9cb871dfc1209393a7ac48ace1f26329b84146c40213685af6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194889027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a894d0f3c66f87a347deb403efb8e59d817f8bad1d28250728f0264d6e35d33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:13 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:18:13 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:13 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 09 Sep 2026 04:27:46 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 09 Sep 2026 04:27:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:27:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:27:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:27:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:27:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:27:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:27:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:27:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:27:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:27:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:27:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:27:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35dab62182780b93fddf3b62a36a552c9d1485716f52b23c0d97db71b10cbb55`  
		Last Modified: Thu, 20 Aug 2026 17:18:34 GMT  
		Size: 179.1 MB (179088420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3120c04a51c1d0a752317e7db6daabd754c429947a676f440f6dc2a359d5c09c`  
		Last Modified: Wed, 09 Sep 2026 04:27:53 GMT  
		Size: 2.3 MB (2256594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2bfc0160d8ea9ee53a0b774c48f70c87a467d3cf6e94c5b27207287a0c1591`  
		Last Modified: Wed, 09 Sep 2026 04:27:54 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad71e73d9fda6129bf3e4ffc8f33f422cca11bb0c4d1d53d6c8a046cd2e63c20`  
		Last Modified: Wed, 09 Sep 2026 04:27:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2fbf405f6e01075c9c280be5961ff4a9c53f5a77d82d8ff9a5ba3e654e2d34`  
		Last Modified: Wed, 09 Sep 2026 04:27:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4ce70ca65e3b18a670f9d017a17c21d3c9276f5d90e75545efd172752a1d0c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.8 KB (750842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf8eb7b3a5fe80dd0a0f5914ab7a84750cfdddb010e179e09182e85869e3752`

```dockerfile
```

-	Layers:
	-	`sha256:8691c2bec02713a77b75bb2a2d589d96c6262e502bacb06471917f16b9ed3961`  
		Last Modified: Wed, 09 Sep 2026 04:27:54 GMT  
		Size: 736.2 KB (736183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae3b7e3d1cbf4bc94f1417a4ca8cbc2498263062d3b3b7b31c15687bd93faa4`  
		Last Modified: Wed, 09 Sep 2026 04:27:53 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
