## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:f181c6d9cb37aa1848683606cc7270cc384f7e0d07216275bca2d7a8fe4929fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:29f59f48146ee8b0dc0640357e65307d6e78d1013a1111b31886645e6bdb7668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159396339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c4ceb139ab0dfd22126972512ed6c456b4e22595088a0d1aee49b8e5378139`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 18:09:02 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:09:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:09:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:09:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:09:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:09:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d77fcfdf369ed0b30258b04750523dc4fffdeefd5a671d659e81fb012fd1dd`  
		Last Modified: Thu, 20 Aug 2026 17:19:48 GMT  
		Size: 144.0 MB (143973175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6d6699b4d98326e84333c0fe206b22111747acc0605c2b8463a2e5ba963acf`  
		Last Modified: Thu, 20 Aug 2026 18:09:09 GMT  
		Size: 2.2 MB (2215790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43347238b3b4a64ef20424da60956c5909c3a350bdcd6ac8130863ba3d989159`  
		Last Modified: Thu, 20 Aug 2026 18:09:10 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf7b859cd535c0c14b7608cc901f497b92fae6e87579a84aa4d6255c395ef02`  
		Last Modified: Thu, 20 Aug 2026 18:09:09 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ef040babef75f041c3a3eb83b7ec50ab08c5d0f1b3d782217eb61ab62fe3c1`  
		Last Modified: Thu, 20 Aug 2026 18:09:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:e0468ab28efbbfc94b94bd9cca697ca96c2c92ed9d24755a90f536ee6e3c6283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.1 KB (748104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4345ce2d62af10b52c46c7a151751aab740c079b16f32410033133bb99a38df6`

```dockerfile
```

-	Layers:
	-	`sha256:1e84cafcd60a7717de0333d4b8c5e309b1dc822d289ace5cecd84cecbe134818`  
		Last Modified: Thu, 20 Aug 2026 18:09:09 GMT  
		Size: 733.6 KB (733578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab64b96b569a408923f09ae23c7d708d05579eea2ef84218c94ee817f1f43045`  
		Last Modified: Thu, 20 Aug 2026 18:09:09 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ba016c4036c89e1cf5c3d7e09ec66abcb7216d9c61ee4710bf0dc1d0905955fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158146737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b818e3b642c23d13fe37381242f2759a57c69c3de81d8c84a2b00d04a77895`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:19 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:19 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 17:22:12 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 20 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 17:22:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 17:22:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 17:22:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 17:22:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 17:22:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 17:22:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 17:22:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 17:22:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc121ed55e6b97313b7f5fa75e0188c609fdc67607859a02d68bd2c1b4da4`  
		Last Modified: Thu, 20 Aug 2026 17:16:36 GMT  
		Size: 142.3 MB (142346996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf302d0eee9783ca6180ce298e13b08c955d5ac6978dfb3e7298cd6d47100c5`  
		Last Modified: Thu, 20 Aug 2026 17:22:20 GMT  
		Size: 2.3 MB (2255717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466d4eaf1b5fb6ad9e09a0f8751275b6e81cf5beefbb0f7f6935b7dbeeec5f66`  
		Last Modified: Thu, 20 Aug 2026 17:22:20 GMT  
		Size: 9.4 MB (9359979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa7ba64b981aaa107ceb158f41f9b9bc82bee3a8e841aab47972e4f63841318`  
		Last Modified: Thu, 20 Aug 2026 17:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b956f8708936c091e2c847296436dd468dd91ec70dab4639408c69f3d85e233`  
		Last Modified: Thu, 20 Aug 2026 17:22:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:9eb30a90884ec3f2c38095332da0f497bf8611b71c3a16dba4cb131ea7a50fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.6 KB (747631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6bd5e37fd88c9397ee743c4130befc789c174ef93eaeedd31783f2b89c3911`

```dockerfile
```

-	Layers:
	-	`sha256:f81eb97aec036abd2b2781162f1f2c8629a6e0a1968caf52fa2de364d8ab164f`  
		Last Modified: Thu, 20 Aug 2026 17:22:20 GMT  
		Size: 733.0 KB (732972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17e2c76ec3d07f829146138bb9c84bfaeac31b97b51eb97bc4eb213c7216989`  
		Last Modified: Thu, 20 Aug 2026 17:22:19 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
