## `maven:3-amazoncorretto-21-alpine`

```console
$ docker pull maven@sha256:7ebb6b74eaeaf2e84e2a2270e2708ee8161ae82837c3efdb5ff38c151b6263dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:c2b398d0e2fcc6ee670b27095027deaee791ef312b4cbca0781b16ba53dee3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178634972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcd9d7f7a886efd581a340be844f5f26df7f4c2a285a8d58343d18bbe8fb443`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:28 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:28 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:28 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:11:39 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 17 Nov 2026 22:11:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:11:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:11:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:11:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:11:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:11:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:11:39 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:11:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:11:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:11:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10506b98573fc52f312327af66070fe317acddc57241cf0c7ed418a2d8b1c6d`  
		Last Modified: Tue, 17 Nov 2026 21:34:46 GMT  
		Size: 162.5 MB (162504606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc105c63b8d43e2bcdb249c2920e4143817c55e0d6e306d7d312822443b0e84a`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 2.2 MB (2216669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd0746a19a87e160504385ddc14ac78993ce7d73b3560aba84719b0e36a7647`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8da90311f137a27c2878347fd1ad3cc06170d10f93cca7213c65d3676d0dfa`  
		Last Modified: Tue, 17 Nov 2026 22:11:46 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7275f15e2734edfece72939f3033fbadc4a3bfa7ecf4c16d0d81f7aaf6189328`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:9de65b80c5e8491942e842de682bfe16de4661e5ce271abaea107fdb22fd0621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.9 KB (747913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940f84e4d2b3ffee7213a9e0bf38aee2d2d738f6cb30cfe68cad01d2f1ba77b1`

```dockerfile
```

-	Layers:
	-	`sha256:ef8d23d7118f344d527287c8671bd6d46344eab0a0fb1793bc99f5cead242dc1`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 733.4 KB (733381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41ec724ed5504de8af8b8917bb57bf53d022da84c18f8ce9c5c30f9c45b9282d`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d6d6395bfd9016139b928099c1c5acf032ec1d38c7f61ad6ff3e825eeddf7d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177013556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ba86521e8d16218a36b49fb1e265893ba4e6eb1408af567bc335bee5a376bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:26 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:26 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:26 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:11:39 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 17 Nov 2026 22:11:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:11:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:11:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:11:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:11:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:11:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:11:40 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:11:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:11:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:11:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c97a46e32e1c4e68ad47f0561940c920a9112057806fc50e25c72f904c3dce`  
		Last Modified: Tue, 17 Nov 2026 21:34:45 GMT  
		Size: 160.5 MB (160506789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b9791b473aad43c6e196184c997e299c00c6eba68f746d2a18f568d49ec781`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 2.3 MB (2256149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423cc86e1d351a18ba393352fb46247aaa0e98f9281c210892d0315db82f71cb`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1706084877c8e9f8af6d9e4090ea5ea732d8e066de95e4cab6c74696329e23a`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e6494b145a1459f32cf10d3d5c9d2f5bc478fffaf45af2052041ca113e7d09`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:63e4e49b1fbde4ea6ebcca230f344493b8937c95cc55ea67d397f28e351133f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.8 KB (746803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df1d3959aa4166d4e3b72578c27516fc0152b12e9bd9c628410e9f3d7112e8d`

```dockerfile
```

-	Layers:
	-	`sha256:cdeec6dfbf5468d5a975b9c9f567fcc908f372e3689048b3acb1c8600528a924`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 732.1 KB (732138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58df3f50b9c179231ad083398da67e0102cd43e4dbbfb753fc14ba8dbefa227c`  
		Last Modified: Tue, 17 Nov 2026 22:11:47 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
