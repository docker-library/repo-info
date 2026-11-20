## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:4bfa36bba9307d1d21646a4729fb2661e72519a5c26d9878f17cf7cd1c0f0173
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:692268938d5e8db7c1544dac074b82c62594d2d420c741ddac5e911b0fd5d41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257068465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970d7c31670a159e94f8e3beb9679d793c4269951efbfc99a1e39bb1cefa6c95`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:17:07 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:17:07 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:17:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 06:17:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:17:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:17:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:17:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:17:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:17:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:17:08 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:17:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:17:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:17:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8e8b3f22d3ad96b08a68d5651e2fb68b6c4d2d524d196fe11992d307df8f04`  
		Last Modified: Fri, 20 Nov 2026 06:17:32 GMT  
		Size: 217.2 MB (217152308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea70bee49a7ce2f41481c3578bf9dc3515e0eb33874368e9a0987db30eab8d`  
		Last Modified: Fri, 20 Nov 2026 06:17:28 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a3c1e949d4db6912f007635b543a9651ae498f21f29c90d9ff78b2a38817a1`  
		Last Modified: Fri, 20 Nov 2026 06:17:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa676050a39ea8bdc041bd910dbaeacd60cf3a51e999cc5804c384aa94009e5c`  
		Last Modified: Fri, 20 Nov 2026 06:17:28 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:e0c0c47351738e9ab05157213d63e9a23fc6a2c6c56705fb9825599a5128a6bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0374322a12c79669cbddfba19cba26a163dd1f9b50e7a1872cfe5e73bb2d2c00`

```dockerfile
```

-	Layers:
	-	`sha256:487d5d4bd4fdbe3a6096f518564c09e064ca9e5c1f018b7edcef655e8b84f580`  
		Last Modified: Fri, 20 Nov 2026 06:17:28 GMT  
		Size: 3.1 MB (3114514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6e2a097044531941b3354244890bc9e2af1cd3742ef644fdcbc6a1f987b4a13`  
		Last Modified: Fri, 20 Nov 2026 06:17:28 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8e833a39d1df89f4b7b1ea93f6de142160d1a4ccb982baf3a61d30e6f580c5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255568226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f2ab891ef619e5ec0821ce69e7b2b4e14be2b992ea9dd497976b3d77f48a81`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:13:53 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:13:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456f5aa77ee2a66f6d99e2198c6548fa51f6fa27b9dabeaf32b372ccc1fd4b8`  
		Last Modified: Fri, 20 Nov 2026 06:14:17 GMT  
		Size: 215.3 MB (215294166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b663c808a4dac603ba2f991a80e6a6f662e8cdc8d791a4b1406784d2f985643`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23209b320830a9f67050253dc9fae7f8e83f74e5895cc311d9ffd741a3ca78c7`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f50f5b3689e6665b4ba8398562d9a1a30747c78d6ae4985668095ca19ebd61`  
		Last Modified: Fri, 20 Nov 2026 06:14:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:ab8b18c91e4c38c9c53a0cebed1c5f394b713a0c0e11badf5710d32d89bb7ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afab9414808541b95a392920152838f4343b5194fd66a66e346fb1b4de40842`

```dockerfile
```

-	Layers:
	-	`sha256:d5a157daecb8e597c1b0662497a5e1b5159cbcf81b26a27539c30d1d5b76d830`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 3.1 MB (3114169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15d0c2d90e405fd0c022b9b2fefe1ccf21ca172cbc9f7b70cad38a353ddc654b`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
