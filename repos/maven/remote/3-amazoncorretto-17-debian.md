## `maven:3-amazoncorretto-17-debian`

```console
$ docker pull maven@sha256:09df5e073e1341236cb6d576cde96da59de9480d6f4e444c8d322b934316ac54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian` - linux; amd64

```console
$ docker pull maven@sha256:968f9c415553647ad3d542181592a3becdb3c6dee247edadaf2f80995ef122d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240779151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cd60f750a95f293d699f883a7d16a5a9c1c37b29d0f0791a2f5f7c886d3e90`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:34:20 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:34:20 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:34:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 25 Aug 2026 01:34:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 25 Aug 2026 01:34:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 25 Aug 2026 01:34:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 25 Aug 2026 01:34:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 25 Aug 2026 01:34:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Aug 2026 01:34:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 25 Aug 2026 01:34:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:34:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 25 Aug 2026 01:34:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Aug 2026 01:34:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Aug 2026 01:34:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Aug 2026 01:34:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18ede9b0cf94b34067a4af1dc82980a79c06af65e5650e7bc3ceda0e808991a`  
		Last Modified: Tue, 25 Aug 2026 01:34:42 GMT  
		Size: 201.6 MB (201625521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590287d634fb288c3066ef3d2891c773fa2faa8b0986950a90a6ad3945e57f81`  
		Last Modified: Tue, 25 Aug 2026 01:34:39 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ae8fa068bb975d3d831387b2d8ba95f0927b3fbf3668edd53596499903cc8c`  
		Last Modified: Tue, 25 Aug 2026 01:34:38 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154d1b0ffadce573b97e6e2444f27fc105c4b75ec9d9813160e1dc46393ef629`  
		Last Modified: Tue, 25 Aug 2026 01:34:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian` - unknown; unknown

```console
$ docker pull maven@sha256:3b57dd413f40a2f709be63af87e6b0773206a72bb3ccdbb65b9fd5b230da7d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237567e77db0000c5b43dc3142a5b33f8ebe878ee9c14f1fc188943f17151315`

```dockerfile
```

-	Layers:
	-	`sha256:610ae1c8b302096fb42156e1c00bd77da53a2b4699b43c93e6dd1bd88c5a5a44`  
		Last Modified: Tue, 25 Aug 2026 01:34:38 GMT  
		Size: 3.1 MB (3105124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46fdf80506a534ba778cb4ccb0caa19cc98e586a58629076bdefd7102951c497`  
		Last Modified: Tue, 25 Aug 2026 01:34:38 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:166d512e54ba96f9306387be207d05039be6c0a675e57d2a0a54fdc36e124934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.8 MB (239758133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb19c2a3c9083832332ac56756874c3dbb0f8a847db70851e04b2224b46c61b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:39:19 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:39:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 25 Aug 2026 01:39:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 25 Aug 2026 01:39:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 25 Aug 2026 01:39:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 25 Aug 2026 01:39:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 25 Aug 2026 01:39:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Aug 2026 01:39:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 25 Aug 2026 01:39:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:39:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 25 Aug 2026 01:39:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Aug 2026 01:39:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Aug 2026 01:39:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Aug 2026 01:39:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0fd8f56e662c0d0d3685569ab5f5c4c73d68557232c326cc855aa9db9912e6f`  
		Last Modified: Tue, 25 Aug 2026 01:39:42 GMT  
		Size: 200.2 MB (200237580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8ca7b6bebf93fad76ac010bf971546b0c3e286823f5ab354ca0f56d8b195aa`  
		Last Modified: Tue, 25 Aug 2026 01:39:39 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe25001343f5be8a47360497e5e82ebeaa39ef0d61a15c6f6cd1e0518059c17`  
		Last Modified: Tue, 25 Aug 2026 01:39:38 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc8049d6607569c8acfc013620ecd1c7d1ad55de89bc485391fe3211d134b3b`  
		Last Modified: Tue, 25 Aug 2026 01:39:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian` - unknown; unknown

```console
$ docker pull maven@sha256:86cb457da68608af7d3d7d7270f67921fb842d5eea8fa0aac40844f8cc6626c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ddcf8e0adcb88c06327f66f12fae379a26845730e729190db36268af2d9277`

```dockerfile
```

-	Layers:
	-	`sha256:27fb1532235b9d9cd7b171f73f1b1c9c47f859b55cfc16ed80dc0fef02814a11`  
		Last Modified: Tue, 25 Aug 2026 01:39:39 GMT  
		Size: 3.1 MB (3104779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf7a8fb29d14d87a36f01d9f9b68b7b6d334cac1462a1781e1d34ca23016fdd`  
		Last Modified: Tue, 25 Aug 2026 01:39:38 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
