## `maven:3-amazoncorretto-21-alpine`

```console
$ docker pull maven@sha256:a601ffe5f3c780ad2491135ae3c6edacb08d234a1665f008c571b50e0e89038e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:29d4f93f646935333ba2c639b6267bc69264c366e47a9b8d42608da7278cd9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178325139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274ff64d6d92e98b87e35bc03a527aa61492b2decb74b9b7f54e0de4e0919bea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:22 GMT
ARG version=21.0.12.12.1
# Mon, 28 Sep 2026 18:04:22 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:22 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:11:41 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:11:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d781ee64e4e37cbd7e17b1fbd2abe312c76056972c450befcd138ec81aaf579`  
		Last Modified: Mon, 28 Sep 2026 18:04:41 GMT  
		Size: 162.2 MB (162198681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e956b97986029041c4a732c3160dadbbcdb54ba6280db6b4fd1318125de5af`  
		Last Modified: Thu, 01 Oct 2026 20:11:50 GMT  
		Size: 2.2 MB (2216700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5945102eeb33f903982c2e40d17c562603b625294ff018f7a918a809cbcb3e8d`  
		Last Modified: Thu, 01 Oct 2026 20:11:50 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f982c7846bba3eb2c8f5b8034ac41d43d4d4e10a437fc145ff538d6e49f68895`  
		Last Modified: Thu, 01 Oct 2026 20:11:50 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e583a33776960f7677d867798a74ba7914ff7af147a83674ede0e4f3dadab906`  
		Last Modified: Thu, 01 Oct 2026 20:11:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:6cd20ad9739559b80cf3bf6207a9a824314837e6b3b52c2f2460b05185fe5cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.9 KB (747915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4229f7cf788ff392147696fff26eb31f081fe80fd6704bcd4261462f68660ba8`

```dockerfile
```

-	Layers:
	-	`sha256:cd722986512574f5cdb90721be259832823288a1dbe0dee808b8658fb54858da`  
		Last Modified: Thu, 01 Oct 2026 20:11:50 GMT  
		Size: 733.4 KB (733383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1191e116c8d755f0e08912acaca50aa3bb255a36e6558c413e047bbd4fc51a4f`  
		Last Modified: Thu, 01 Oct 2026 20:11:49 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:869590b2fc144cfee36046312af06acacffef272988e9eaeca321013e415ee0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176706774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6ae84f960eb73e60b32c3aadb28f54f3cae4007d338f6e6e91d94e0367ab2d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:10 GMT
ARG version=21.0.12.12.1
# Mon, 28 Sep 2026 18:04:10 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:10 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:10:26 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:10:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:10:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:10:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:10:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:10:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:10:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:10:26 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:10:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:10:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:10:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f36b47c418118fc77b81a192eaef2c0ffc98cddb4396f0a502240598153735b`  
		Last Modified: Mon, 28 Sep 2026 18:04:28 GMT  
		Size: 160.2 MB (160202971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d467019ac0bc8d8c1f1b90fff2ddd28f3728662e4ac97ae2e62b9cf9e7e188b`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 2.3 MB (2256141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045559583c0fed44f50e7edea9a4ca98242662e9149c14c6af2acd5155318e8f`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab0088fdbd911286443c8982d13fce02237539f1fcab448810b34d084e6d967`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6d55ee2a7c0d6f7b0e0874e733bbe6582faeb79cfa018d7ecfd689493e8459`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:e329e93572b50bf8ca4c7e884d68edf5adce961c5acebdbbfd8e548c387b95cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.8 KB (746805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13ed2912cb399e6bf153f1c6b3611177e524b1a6beefa8c26ab29a97e33a755`

```dockerfile
```

-	Layers:
	-	`sha256:e4bd681f8f729bd16da0da1005aa0d79259c5eb27eb4e4075f0ca975f6822e80`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 732.1 KB (732140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1986ee7ab43070ae7b58795e01bc8c043e2e0873c2bc97f3ab3971d090d6c548`  
		Last Modified: Thu, 01 Oct 2026 20:10:34 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
