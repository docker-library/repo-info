## `maven:3-amazoncorretto-27-debian-trixie`

```console
$ docker pull maven@sha256:a68bab12779287cff9f1b410cdb8b6dc739c15522b47f8bcd64d8a7a9d575334
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:4193f51cfd139c4c4d44ff39c1248b4362cdb567467100efdbe624efe992c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277794174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff2f8853ea0385cb9056052548cd2bcd76b2748a318c7300f242b60f76834dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:09:34 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-27-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 19:09:34 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 19:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 19:09:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:09:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:09:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:09:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:09:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:09:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:09:34 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:09:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:09:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:09:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:09:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:09:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35145630858428366ab811155c145d3dedadbee5bd6af341de20d8fbd6a31c2`  
		Last Modified: Fri, 20 Nov 2026 19:10:00 GMT  
		Size: 237.9 MB (237878027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c46c7f6807e3e01260b1b0bcafe2418878baa213d6c369ed2f684ce3787bd8`  
		Last Modified: Fri, 20 Nov 2026 19:09:55 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0750d7e51d1cc26e02c0200ecd014271c743fc59749580d666000ff8b2aafea8`  
		Last Modified: Fri, 20 Nov 2026 19:09:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7029a85bdb385cd2d177669ad3cf44052d5430cc3337062c9409095e7afc802`  
		Last Modified: Fri, 20 Nov 2026 19:09:55 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:af973cfe7bc50554c6671bdfee939e99b43298926163427ce6f117b6728ae66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3126708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d193ad5156af13f2ce83b5db26b94b17a151496e35be88b873fa80a7f991caf`

```dockerfile
```

-	Layers:
	-	`sha256:d52561872042270e024f0a99c12cd574be14572d2b55a7e2bb7b8e03efcd9d51`  
		Last Modified: Fri, 20 Nov 2026 19:09:55 GMT  
		Size: 3.1 MB (3109176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b947808ab38983b1c0378b88f1c663403f417367cf97126351ce7f1fb26033c`  
		Last Modified: Fri, 20 Nov 2026 19:09:55 GMT  
		Size: 17.5 KB (17532 bytes)  
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
