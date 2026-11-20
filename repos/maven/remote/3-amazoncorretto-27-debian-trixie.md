## `maven:3-amazoncorretto-27-debian-trixie`

```console
$ docker pull maven@sha256:46f7f1855d5dc2d3aa720b33f51af5eb26fda5ba65256834b09514a9d3402e92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:474e38ef9d21c2bce69a54de318fbb5d9f6b597ecd14227e47cd98935cf7c265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277794055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6053a19dfa2378079cec171bc76032bf527a563467842d0f92159584534687ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:18:06 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-27-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:06 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:18:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 06:18:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:06 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc5c76f8df8f79d84d82a9d3bcb014b8896bf93d6af8bf8e15514b7f476f72`  
		Last Modified: Fri, 20 Nov 2026 06:18:31 GMT  
		Size: 237.9 MB (237877897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d5539487185bbaefcc6802b061e8019b58ebde461cc872eff00ad1c22b2f53`  
		Last Modified: Fri, 20 Nov 2026 06:18:27 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29e6cdff6d337263134c0e06887845b755d2cfe7f7e34996fa2392c9a7e71fd`  
		Last Modified: Fri, 20 Nov 2026 06:18:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931e5d1af2336cda4737e0571f679820e4754e3c935f17f4e305d37dddd11883`  
		Last Modified: Fri, 20 Nov 2026 06:18:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:6aa63ad6001f1aa1cab996af22e6fecaa65a9a4835246e5fa05a893844b11aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3126709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1f77d1c9e1147469315806790f12d030fef8b10f1b3262c9ed5c633a402ad8`

```dockerfile
```

-	Layers:
	-	`sha256:173f1c42a6faf6b9bb3386140abe52fcf9093b8855dcc784e2d4d670abf6043f`  
		Last Modified: Fri, 20 Nov 2026 06:18:26 GMT  
		Size: 3.1 MB (3109176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed9da92f3951d714509f1dd996ebfbf980319616ff36f8d8ff33e6e2fed858d3`  
		Last Modified: Fri, 20 Nov 2026 06:18:26 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b1ef6ea28ca329d4b2ae37b7b477421468e40e0e08b9266f8eeb0cd5c9b2654d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275890536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb1c0b5975c8c7e54bebea3de494de79166f7f5a60315cd2ae8750d514706bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:14:52 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-27-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:14:52 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:14:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 06:14:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c23e2d6a61ad6e21e42c1fc5956a50e94c6135a842fdaa3bcb86a2f67a7fd3c`  
		Last Modified: Fri, 20 Nov 2026 06:15:18 GMT  
		Size: 235.6 MB (235616477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5582df18e8b9a4019e3d26bdf77cffba4dd9d3da39832a8ab723c448e32cdd7`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448f24f8e8d55fcb63583b55876d8cd686aa717e9616e78971828eab2fb9089a`  
		Last Modified: Fri, 20 Nov 2026 06:15:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04440bd83d26090352063addc3d416f2fcca146a1715edac07fda2b09fbb01bf`  
		Last Modified: Fri, 20 Nov 2026 06:15:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:0700144f3dbf7d6da175a7644da93598d12e09856f5b194213db477d553be8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3126530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c077d81695c88d719954695656a4a5dc6c7e24168fd81dd7f5119c412d66902`

```dockerfile
```

-	Layers:
	-	`sha256:2d032121a1769e5a15885bef0ba6752f1cbe6ada297757522d0daab7eb37d538`  
		Last Modified: Fri, 20 Nov 2026 06:15:14 GMT  
		Size: 3.1 MB (3108828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae3d399f257c06321f52d82629ed04402465e25bcaaadfe2fc57117baf93269b`  
		Last Modified: Fri, 20 Nov 2026 06:15:13 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
