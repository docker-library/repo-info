## `maven:3-amazoncorretto-27-alpine`

```console
$ docker pull maven@sha256:663fa4319c8b753837c68942bd4dad141664f5e021548ad4185e5da13be2b90e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:646cecbe51035384aef14b9762f3904d5aa22e8ca8a02229c7d23232848255d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198875195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b45ec6bd11e5c7438d94140a6be1db007f51b91a84acd32db0f3d3687ac4eb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:32 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:32 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 23 Nov 2026 20:12:52 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Mon, 23 Nov 2026 20:12:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:12:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:12:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:12:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:12:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:12:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:12:52 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:12:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:12:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:12:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c196f8248b1bcf45ed9f94ac04ead94b6524fe7ed222a3b0b7e0a57cfa2345f6`  
		Last Modified: Tue, 17 Nov 2026 21:35:52 GMT  
		Size: 183.5 MB (183452194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cd8401798b186d11780d999a8d322dc170f2a0d7eee28ad03f379f6a939b50`  
		Last Modified: Mon, 23 Nov 2026 20:12:59 GMT  
		Size: 2.2 MB (2217032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4911e611075b8afe9db22d27932ca6ae18cd0c5660584cd900097d8d1af389c3`  
		Last Modified: Mon, 23 Nov 2026 20:13:00 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb4e5f8ce66e8eddfdeb6704125b8de1d9957dadde2ea7c977920058c1e6360`  
		Last Modified: Mon, 23 Nov 2026 20:12:59 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ee92dbd49074309d56ce28845ee1714d1334b8b66fd3dcc8391e90d966149a`  
		Last Modified: Mon, 23 Nov 2026 20:12:59 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:5857b6ee7dfc15e6d5c19c837c918abc5ae50032f14643a22b3fba9eefbcde4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **736.3 KB (736265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a8e5813251cb45dc9863c9031f374d759c6f9fd511533cfe0c01ab77146ea1`

```dockerfile
```

-	Layers:
	-	`sha256:e4e86fa43bcc7f655c2c170c5f60e848aceaf7e561ebc974a1c4234ddf6122f2`  
		Last Modified: Mon, 23 Nov 2026 20:12:59 GMT  
		Size: 721.7 KB (721737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eda3c07563953cf62628447f0f265d0b8a972d5997449ddf50cbd49f81c2e49f`  
		Last Modified: Mon, 23 Nov 2026 20:12:59 GMT  
		Size: 14.5 KB (14528 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0d755e1411ee87f92b35c81ba96babf6a51a4fe48dc37f4bb4919caf7825f7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197597223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccce95d0cc8ffd1a0a3abe4ce4ebdfd8c1a34d551effadf18ee048a8e0d78ff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:35 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:35 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:14:29 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01843f82117616cde1f2d288182cb74f549946c6c545c8e460bd73f901351cc`  
		Last Modified: Tue, 17 Nov 2026 21:35:57 GMT  
		Size: 181.1 MB (181090334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766794fd1962af484faa0ed2bff94517a35bb56464504d38780df7a673278f1c`  
		Last Modified: Fri, 20 Nov 2026 06:14:37 GMT  
		Size: 2.3 MB (2256278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb1266188ca1288c7d175c453df3b109c3fb77d4857527dc2346fb8ba8b6b7d`  
		Last Modified: Fri, 20 Nov 2026 06:14:37 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b07704eb233f07bc0a79b728cd128ef6123effdffbf2553a666a4a61377072`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d570792a1a4974a7737ba231b8b61c6b15c6a1dcb9de578ac05dbc0b848a451c`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:39cb73a0531d0f81375766b9d60bfcd0ad33aeae3e32b246def449c01f3a82fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.5 KB (741461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c6a3f71f0d92663172c883401ca786f66bc836e8325d34d9462e84a4c7eae9`

```dockerfile
```

-	Layers:
	-	`sha256:d5e60146a60b19697b3dd7447e2dc80334dbe452b2f6014c4bdd3b14c6af6df7`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 726.8 KB (726797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031b3e4b921639f73124cae756c4509f159a455b6810c64af01cc9f53fe469d`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json
