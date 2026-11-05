## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:a40b6b51bc2cdd7e09aad19258854c56760d3d64ef4e47834b4f391fb1054724
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e28575fa18ce09e54c996482b06a28afc60073f45831e1c122410c99a16d4800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197649719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2884cb28f85800123f53dfe6b1c446726a6023172e7a969a0718924cde24ae`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:13 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:34:20 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 20:34:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 20:34:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:34:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:34:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 20:34:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 20:34:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 20:34:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 20:34:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 20:34:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 20:34:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 20:34:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 20:34:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6885d20d310accfe25337a23f30b70168b98a7d67e4540736056ea92f01f85d`  
		Last Modified: Thu, 05 Nov 2026 19:14:34 GMT  
		Size: 181.5 MB (181518287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca221e55e3ed4cc3d5b2947f4ad734504306330cf9cf2c0a39928b58ef0af61`  
		Last Modified: Thu, 05 Nov 2026 20:34:29 GMT  
		Size: 2.2 MB (2217734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdfeafd24554962f45aa3bef79a282cb83fef46d39a8504a8601a27b03925bb`  
		Last Modified: Thu, 05 Nov 2026 20:34:30 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66351b156cd671b403116cdaf093db7161e3368750d68f7588dc3dd1e5e2ff2`  
		Last Modified: Thu, 05 Nov 2026 20:34:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517cf9ca49a0ef7b54b95fe63af450558edc3c8e97879413d774d159c8b23b69`  
		Last Modified: Thu, 05 Nov 2026 20:34:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:75d733543ea10ed88d6b5c718d40b5a6c41282535d792a5d395fe1eb5b5c5b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **757.0 KB (757009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dcbc04502143a6782720e969454f3e1a9aea4eb370e02d11de1682a3c18cf0a`

```dockerfile
```

-	Layers:
	-	`sha256:824c93b40863289fa95a6769089b0cc8ee7ba217c9a60d9ac041335a6c9c8cb4`  
		Last Modified: Thu, 05 Nov 2026 20:34:29 GMT  
		Size: 742.5 KB (742477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7af9757629ae6db9422e13fb15ab8fd6ce530f6eb39944e7ca56dcdbca50077`  
		Last Modified: Thu, 05 Nov 2026 20:34:29 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:be710ed7777212cee9ef972bab0878ad1af0473c65cca2e36e2b9965f8c1a443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195599572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe852f18de54f68cc5fe61eae4c213a92490f9c441ab5a3adcbe9982b9beece`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:30:00 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 20:30:00 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 20:30:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:30:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 20:30:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 21:40:22 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 05 Nov 2026 21:40:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 21:40:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:40:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:40:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 21:40:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 21:40:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 21:40:22 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 21:40:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 21:40:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 21:40:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 21:40:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 21:40:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb250fdd4a053c9cb112d83fe4e3c450d9ff6df2195fda4126f09532c2640f`  
		Last Modified: Thu, 05 Nov 2026 20:30:22 GMT  
		Size: 179.1 MB (179092443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30e7cb58a103a1812dc58bc429320347665ee3c0e3a5e4e73f27d697cc933c7`  
		Last Modified: Thu, 05 Nov 2026 21:40:30 GMT  
		Size: 2.3 MB (2256554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eec9a2de5a33ef243617dca500bddcadb6592ee56b502c3edb09243c8424a3f`  
		Last Modified: Thu, 05 Nov 2026 21:40:31 GMT  
		Size: 10.1 MB (10058977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7a62667aeb7ef3fa72934cd5e8f726faeccc18e5db907cb799ddaf4551431c`  
		Last Modified: Thu, 05 Nov 2026 21:40:30 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a26ab698e59165b72c192372c014b12fe6f133cb3d74eb344e3aaeeaa011f3f`  
		Last Modified: Thu, 05 Nov 2026 21:40:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ada69767e7cfc52f211c14c86f06c0bf311b3dbecff72f63304d5787dc11c01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.9 KB (755896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19bf0248c0e383b6c9d3c43953f8c7e1933109487b6e83e7a4cda38cbc0c17fd`

```dockerfile
```

-	Layers:
	-	`sha256:3f8063bbeef2744191aa9b4369217abb55359f90f08c6e52cbe250a451da761c`  
		Last Modified: Thu, 05 Nov 2026 21:40:30 GMT  
		Size: 741.2 KB (741231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:057d4df671dbf2318dd661733bb489ce4f4950dacd61b2e50ddc53d290265353`  
		Last Modified: Thu, 05 Nov 2026 21:40:30 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
