## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:e8203d895894a77349957929196a6d52a3a3f17b4076b51da27caf90f6d953ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:82811dd93720cfd40b26b32e66a1e8128fcb0c03d58614402b48743d2ccbb30b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164382737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fbaab4feea8ae70123380527b0f9bd40c283da715cfa926f61383994466aaf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:24 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:24 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:24 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 18:09:07 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 20 Aug 2026 18:09:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:09:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:09:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:09:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:09:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:09:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:09:07 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:09:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:09:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:09:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d2603c23b29228135f0a1665fc72adaf063ab54ef241305d6efae571f13db6`  
		Last Modified: Thu, 20 Aug 2026 17:20:42 GMT  
		Size: 149.0 MB (148959822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5705a2658c3aded8239ba94109465897879413a6b263ea3d35fe1071a62e5`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 2.2 MB (2215548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff01252343c1e8cc9ee8b945fce8cb8fe79df7543b6ee0883fff77fefcbfdc1`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b2f6d824dd379ce8a2dfdd89722c834b49233b0a98904b06f00dbfa0c1f36`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5bbebbcbbc87a140dc5a1684e6ab9ae68d2ac0bd29e7af3b75eebea6bf115d`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:a98ba2634617d8d5bbc0a841dc5505c3535e66d9ae8b5345e3258d80181bde3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **743.0 KB (742956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c47d1a348ac1f6a8597889fa6be9e0d30051c0cba4db3da4778c4df9209c2a`

```dockerfile
```

-	Layers:
	-	`sha256:95b61bdf85a2048bc2aa3a33b0bc06fd22c4879a23a44deb96d04d0d0089a82b`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 728.4 KB (728430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af148dd16a0dc1856c8a2859b462bb7a882088914834133b23170e52fcd1bf7a`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f6f68f03aade3358d94534b270ef29e5cd70db1c6ee1090999689a3896e9a7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163175762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587db90ab43167c23c20a70be50896bdacea65651eed75958d35d846174a403c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:03 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:17:03 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:03 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 18:05:09 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 20 Aug 2026 18:05:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:05:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:05:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:05:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:05:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:05:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:05:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:05:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:05:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:05:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:05:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:05:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db376e23c2546dfcc058ddef5818920d241637deba612fb24b4fdb4f6514e23`  
		Last Modified: Thu, 20 Aug 2026 17:17:21 GMT  
		Size: 147.4 MB (147376025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357f1ff98f4252a5b5efe5467e9997b41a9dc5a5183500a3d4057f4971c7c484`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 2.3 MB (2255716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4355b88a4cd76e8773124f9cbb0498c4541c92395db7bdf65d6c85c91892ae61`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd38b6ea561f73abe9e90bd3bb9c6f6a997ee5f6b54eebe4703611ee013a3ffd`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d6dd0088755c65251f7d91e7e886b4fd0ef7800b261929e2c82711795e57a8`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:0ec27306b2398cb3f785b08c265c7a513e4785c1c5a9734d575e22cc7169e132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.8 KB (741846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efa630dbe577a6b56d34120eb6424c4ed5b39068e4d82ca0befa724714438ee`

```dockerfile
```

-	Layers:
	-	`sha256:81ecb7fd1f0b9d43f98559c832db98fff99e8aee4db0b5143f21480940ccd565`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 727.2 KB (727187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8114614bebec0a42715d5418e201242d4888f53b5d65d8a83c38237d488cf4aa`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
