## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:9ec6866eddcb8a26b66f9e0843e13eecba24abd979b5e05c4d8396e7a88198a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:383ec8d7291a4061b681123a393916d4a59c8f5da87132cba71cd6f50c2c6f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196933289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e4b01c379761984831224cc520ddc7df1634193b36233564b5f032cf2a25f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:10 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:13:10 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:10 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 18 Aug 2026 21:29:23 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f382fb17f36d4f967673b95d602fb43b817f015d4fe0ff664e8c64ed20d7a08`  
		Last Modified: Thu, 23 Jul 2026 23:13:31 GMT  
		Size: 181.5 MB (181509343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241e72f469d1d5c23e6bba00dbf84d5a6f651c0cf1c0d06de7a2bf6e717dd054`  
		Last Modified: Tue, 18 Aug 2026 21:29:32 GMT  
		Size: 2.2 MB (2216571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f04a50657e21eca54fb1ddf6ab3dd9a1dbfee4afb29322ce3ff1688c8e4fef0`  
		Last Modified: Tue, 18 Aug 2026 21:29:33 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30afe73d7fcbc129eefbd415d7e3c62041fd70ef50c4200fb3e8add5f12709d`  
		Last Modified: Tue, 18 Aug 2026 21:29:32 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a92656bb2f73365b754c8fb87ed321a4aa69de5dc055eb55e90bccd078db90c`  
		Last Modified: Tue, 18 Aug 2026 21:29:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:1ce41c1eebcfa7c89eb1ce2d9927cb9f07832b19134a6b863612a57888ba60eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.0 KB (751951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb71b85be455e6f4e755a53bfb3a96f24bc6718666de708d6f442ad2f534946`

```dockerfile
```

-	Layers:
	-	`sha256:86914387e817b2ed912f06bd259850fdb5da112e263749fcecec138d760e3d05`  
		Last Modified: Tue, 18 Aug 2026 21:29:32 GMT  
		Size: 737.4 KB (737425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9d8cfc181fc97696e4bf94c645826248ec92d1d86aee65ba3c71056654cf8b1`  
		Last Modified: Tue, 18 Aug 2026 21:29:32 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8d38665b297ebce9150786541768f4ff76033308693e016d8da3f0d8d1798d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194881297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8148120ff753e889a8043f932b3355293d4a09e20158998fb865bcbade86e7a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:56 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:14:56 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 18 Aug 2026 21:29:18 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:29:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571917d07401fcfe1b538b9f36096638bcc49838511649757ffe415db2d4485a`  
		Last Modified: Thu, 23 Jul 2026 23:15:17 GMT  
		Size: 179.1 MB (179081410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae926890ee8c0e6d9588319e47590468b5ee17699c24fb09e0aeeed03d2bcad`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 2.3 MB (2255875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b293e3b86b67c17517d1848a3e1dafcfda65489c4a1d1e750ad17da467c501`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a188f4885fbb7f98b76819ad590e3da97d73e51759fe9778e834ec67a8c0d451`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce90356e795f8e2c595fec30b82d29cdc08a93e1618a39adbb4ea02cd50d9dad`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:9d5d71581395e68ef3f7e63418064ccc64cefaa38c221c360afd03bb6e555973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.8 KB (750838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede9561d9e5354b227641290120c105893eabddb5c0417a5fb41bae0fd7ad085`

```dockerfile
```

-	Layers:
	-	`sha256:cf7d26b54494f5e7f267b51c6d32962a19ea489758c319eda38984c4af79a553`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 736.2 KB (736179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15d43fb4a26d528484b06b6cf8ff6b8b550ffadad7d6306df6501e9c07ce6702`  
		Last Modified: Tue, 18 Aug 2026 21:29:26 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
