## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:0f44c6d5897fa1709d35283e136e7baf752cb64cbbf1cb944f99835d7625c7ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:af976a542d9fc2ffe0a99a80cac28724cedc9fd80abb3e2fd0e65d87ad7d4c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160157943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002cf3bb1a36f1827bfdac20c2391269797c6b06d1d0b1df7a81bc584b1658f8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:48 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:48 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:33:17 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 20:33:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 20:33:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:33:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:33:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 20:33:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 20:33:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 20:33:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 20:33:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 20:33:17 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 20:33:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 20:33:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 20:33:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65457bd090cf7f303477e49cad5f41046bbc073be992cb04bb52d2c7f0a4ee2`  
		Last Modified: Thu, 05 Nov 2026 19:13:05 GMT  
		Size: 144.0 MB (144027369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df107e3b58b82f70155c6b82167d46c17280c38117aa121d65f1c685f70bee4a`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 2.2 MB (2216877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f528f70da42aec260633f1db0a64c16afe87e25571dc33d9b8c66b43b85ace3`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac580a54bd558787a19f9bf04253034e286c1ef35546f2b9b4dfcfa2659afcc`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e210c2395ffa20f19775295c14c644b792521b34a4f5a9e58585f623dd50f20`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:d3fd096fabe9a867e5374e07e4545086cf28879d950b65dc837d6b77e6aad6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ae59362bc1250937c73d2511ac0ed4f997582382994f4dd2ab81cc1879e290`

```dockerfile
```

-	Layers:
	-	`sha256:9181d90e4d04c6ed447eedb1dc314421b3d99e7ea3949d15df0e0933c178f681`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 738.6 KB (738624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:541611bb14d3b4542bda0cc77e9f6a8c181da65b7f90a460042ca6707eac019b`  
		Last Modified: Thu, 05 Nov 2026 20:33:24 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:1001505e6833b99043a039ba4bfab26ae3fecf995e1e02cf0cd37ca470ce4b54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158889432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54348bac23f30b7ce9ac049649069d0606955a48e33b595e44ebc96d09afe718`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:34 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:08:34 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 21:39:24 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 21:39:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 21:39:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:39:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:39:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 21:39:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 21:39:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 21:39:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 21:39:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 21:39:25 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 21:39:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 21:39:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 21:39:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ac0f1348e1f4740e56e7fa53460d776d208ed9dd78b50dcd318c1791b4707d`  
		Last Modified: Thu, 05 Nov 2026 19:08:51 GMT  
		Size: 142.4 MB (142382578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d2982ef745cc119e9b84b440d52ab8e799ec9ab16ebaf51391bdb57bc7e50a`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 2.3 MB (2256291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62862d9378c62651c46f6752d26c72323c541e14895711d752a7a69f41ec9d98`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a306d461658e51d55f8b012cf1128b7b11b2f940fc621b0e111500b226ad5776`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4acd450057dac1a0bbc218b1b4ea25136fc87a36a0abad4e5935836abc8e872`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4928edd93427d66cdd774380997408255f074152aa34974d405c3aeeb2ffefbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b7b3309687d4dbd2b7208ceeef8b66b4380e4660a18b302332f356c670cec9`

```dockerfile
```

-	Layers:
	-	`sha256:011de044639fe5df0844b17e79f9bd3ae1a2f0800a23c52c64fc3ae117055a9d`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 738.0 KB (738018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509d059f809c50be9989bc7bd793bf5b26d3f66dd06242457bcb1c3125dc5e09`  
		Last Modified: Thu, 05 Nov 2026 21:39:32 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json
