## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:d8bbc85fbeee8a7095760a212a28d1a6d6e0a5ab03b2fefaf416c07615bce917
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:2f513341a4bc53f6868e361311309f585345759c671a775416224236a1273bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160099728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b7da7b3feed2504ec77825a50e4af028531ce5cc16da0a7feac2416ddd938`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:03 GMT
ARG version=11.0.32.12.1
# Mon, 28 Sep 2026 18:03:03 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:03 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 02 Oct 2026 03:41:43 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 02 Oct 2026 03:41:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:41:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:41:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:41:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:41:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:41:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:41:43 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:41:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:41:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:41:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76b865d353ee02c78d12f14c520fe6a05cde2e44f4a1ea1f4a17c4ca832b56`  
		Last Modified: Mon, 28 Sep 2026 18:03:20 GMT  
		Size: 144.0 MB (143972989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b4ab5cfa73a151a08824b53a848a47660330e358ce7b714bb758fffa0f9ee5`  
		Last Modified: Fri, 02 Oct 2026 03:41:50 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072ba46a234100f5379ea96fb6b0b786225d611f6edc7fa426e9de56d0edd0f1`  
		Last Modified: Fri, 02 Oct 2026 03:41:51 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9062cf1150528194c5e1474df361522c0a783ef0aa3044c6f7cf919876c2f588`  
		Last Modified: Fri, 02 Oct 2026 03:41:50 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517721e7fff7400dd1a5270b13045a945fe26d263f9758667f23b4d820163a0c`  
		Last Modified: Fri, 02 Oct 2026 03:41:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:5683c6e92537f76e4fc7e4efafed14de85ea649235f19aa7501739e72d7a0861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca042d72e7a27e69f48515903f2a1888b2bdb682ed12ded5a02f0d83f919d7d4`

```dockerfile
```

-	Layers:
	-	`sha256:a0085766b72e37a0ae2ee20fe85ffe61ebc17702e2052fecdc14b181baf65b28`  
		Last Modified: Fri, 02 Oct 2026 03:41:50 GMT  
		Size: 738.6 KB (738628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d73958311361069dc4ce564ba41b056e3f84374ba2e08f1736b31812a6522c4`  
		Last Modified: Fri, 02 Oct 2026 03:41:50 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:aa9ac92cf4307342e82203d6beae7dd0dff3306a3fa0b9943b68c1524be648ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158850525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c981cf130e97c388871899043168ee00a65cb45deff82ea782206f82a3e503bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:02:57 GMT
ARG version=11.0.32.12.1
# Mon, 28 Sep 2026 18:02:57 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:02:57 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:02:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 02 Oct 2026 03:30:45 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 02 Oct 2026 03:30:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:30:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:30:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:30:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:30:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:30:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:30:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:30:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:30:45 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:30:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:30:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:30:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7458ae3ef813635d38c802fedf1cc6a5346d19f30bcfa1f6589949fd3c32021`  
		Last Modified: Mon, 28 Sep 2026 18:03:14 GMT  
		Size: 142.3 MB (142346575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d532783a26424d237dc15a035be296470039874430b92d810242cbfa13334b19`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 2.3 MB (2256285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47234f07981da29e467e814f804cae5c6e316a8319208371ad1a86c9360c6f44`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb22584c9a006cae7c4e4ba3da1dd4aadd71fe13f99b19ae7746dec2b8b888`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e896f9b0859d7cad0a1c9aeb39d4c504b2b7ee62b52283782de249128f448e7`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:c0a3d768ffca7d88f254bba8f756569f1c54b4bcfd55c8695429b75bb5d07643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371421d3ac08b3fbac4653119acdc03e728cd2ff1c9001de36a2a1aa10f10b60`

```dockerfile
```

-	Layers:
	-	`sha256:35dd9a452a36207d423c82519e0bee20c9106fa963835c6211f49a696d79b7d5`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 738.0 KB (738022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7054b1f3aabda66d765aa68d4c3cc5bb46cd11bcf1bf90d2d2439b4dbc83ef41`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
