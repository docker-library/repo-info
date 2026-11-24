## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:cb3600fbf98ebfb93f7c82d448daa0065524b65856636734d786fd1a3f62d280
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:abe7ee390a41a0ab306b47f4ba3cbb05f26bfd399d7990e7a835b64c9c57e672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151815247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c72a758f5542e1634a26807a47b99bbabbda605948404bccd414a4f8b616e96`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 23 Nov 2026 20:13:23 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:13:23 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 20:13:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Mon, 23 Nov 2026 20:13:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10baad304f2f6f11ed912be27e68c6850f45be30c1305395afca33fd37fcd0a0`  
		Last Modified: Mon, 23 Nov 2026 20:13:39 GMT  
		Size: 112.6 MB (112606816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0b79abcee3e21bc1a8500d1221524e6e486e74cfbcd8b3fdecb059089ec1`  
		Last Modified: Mon, 23 Nov 2026 20:13:37 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7360b12461af5d12d07a5d9d8952ff641147a56fc18bd3d6640ddc5763de776f`  
		Last Modified: Mon, 23 Nov 2026 20:13:36 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae381cddad550cf96a0bb5b873729f279befca95174622b450603c80dfe189da`  
		Last Modified: Mon, 23 Nov 2026 20:13:36 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:d27edf76c662931474207f2684168413a2473b0f0f80085d2ff77b3751cea6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2985637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9237a99103370d332a9ed5b65ac1aded54e6b2194eb4d8f4b151c805fea5d4`

```dockerfile
```

-	Layers:
	-	`sha256:af6fdcadd90f9f4128301cbcd0944c7e192f8c6c56b929f6445ae0db051c53e7`  
		Last Modified: Mon, 23 Nov 2026 20:13:36 GMT  
		Size: 3.0 MB (2968100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc2a600ad87e5276cba7d3101d5cb70d86d82e11b9e6e3faafc8e7c2187b684c`  
		Last Modified: Mon, 23 Nov 2026 20:13:36 GMT  
		Size: 17.5 KB (17537 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:68a140d1714f7a7de3d1c5ea7f6f0d2043c4f61dce9dd0366d7137fca69cecfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149700810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f381958beb0e1b1a02dcee4f5b1e702ae7001c7fa04c30760194ca2c917ab2d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:15:26 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:15:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Fri, 20 Nov 2026 06:15:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa44014fdb7de767e36c4cd987fdb87d19f3c7d9278cf6003c5ac327d22641b2`  
		Last Modified: Fri, 20 Nov 2026 06:15:43 GMT  
		Size: 109.4 MB (109426751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc7abd631003ba1b96dd7ebe36f262241a109659a8740c44e5f4bc43f70c5e0`  
		Last Modified: Fri, 20 Nov 2026 06:15:41 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc4b0aff6b652f6e06026a1f1ef2f04c132cbd3aae3514512db693bf98f31a2`  
		Last Modified: Fri, 20 Nov 2026 06:15:40 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fccdebc13e68f5122db84a12064beff1aa0b18b18d57f562b5c40a907c5d38f`  
		Last Modified: Fri, 20 Nov 2026 06:15:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:902b93a1ece46689f44fce2a180542cb52d54ef98f26bec77ee8b1ae097a47b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cd45119ef0d77c65e4eef588bfbeb7261975e4cf54cb2877c946883f3b4bbf`

```dockerfile
```

-	Layers:
	-	`sha256:f2099f178a5c22508f8f072ac242785ecbeffabd22f92d5e6f22c68c730cc362`  
		Last Modified: Fri, 20 Nov 2026 06:15:41 GMT  
		Size: 3.0 MB (2974778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:190f6e0caf8ef087e67b1c555cd1042630a13743c0533e5e7fab601e3b953e81`  
		Last Modified: Fri, 20 Nov 2026 06:15:40 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
