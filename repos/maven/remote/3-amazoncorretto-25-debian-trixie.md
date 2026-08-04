## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:78f8c186f57b813c98fe95e5c64e797dd496a47a12f61dd259820b860655b060
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:2fe8f92e100114b9f7dc110acc93ee3b44ef752b8c71ec4388a9f55e27602bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274780593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ae90750fa368609ec1be5afed644e3537a52d883b661da378e9907c2d03b2f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:42:40 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:42:40 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 03:42:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 03:42:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:42:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:42:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:42:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:42:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:42:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:42:40 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:42:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:42:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:42:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11a7b523ceb7568e7ee16efd20d6bd412f48a847f504221b8371302269edb7a`  
		Last Modified: Tue, 04 Aug 2026 03:43:07 GMT  
		Size: 235.6 MB (235638722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba74d53d62cea28e4d0b64e1b49ad578bcf45b489a51f31d9cff08de39f8e5c0`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 9.4 MB (9359964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0723ed6b1db74d51a33365f44c76553fc231c35a4091113393fc26abe7ff066`  
		Last Modified: Tue, 04 Aug 2026 03:43:02 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effeea79755db178f75395ac7f0a8e8b7998de9d050383b2cb77e7d318431b25`  
		Last Modified: Tue, 04 Aug 2026 03:43:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:8c26ba1ee1a93693b5d94ac43dd3741e56ea67b0008e9f336ddead68751cb676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49d888bdd1ebfda03732fe766e7b2fc34e6ff65ff9262dd7f49c1d0394d7dfb`

```dockerfile
```

-	Layers:
	-	`sha256:b2f5505e63e1b7bdb019dfe82c3cbb237778c36c2025c6c53eecb5a8a86d196a`  
		Last Modified: Tue, 04 Aug 2026 03:43:03 GMT  
		Size: 3.1 MB (3113921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baac577fcee763b3572fa3743b1abc6958daba62c18017f1b84f8bf5508f965d`  
		Last Modified: Tue, 04 Aug 2026 03:43:02 GMT  
		Size: 17.5 KB (17525 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5d6890044ce28bd8ec1c1a23c25b416aea26899bf902e234c4d30c332dda7a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272838114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ac8b0a9badf0167903657e99854af4ab512db79b548db452c5b6303fd02629`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:42:44 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:42:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 03:42:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 03:42:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:42:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:42:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:42:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:42:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:42:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:42:45 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:42:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:42:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:42:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47654e1f799b6b02a5820a7e2940a6e09118315a586748ad7fd60f678b8af01`  
		Last Modified: Tue, 04 Aug 2026 03:43:11 GMT  
		Size: 233.3 MB (233333435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3c34b63f8d5a592cc3c79d3e424b9700805359f8cb4e75db864f87eb2e818e`  
		Last Modified: Tue, 04 Aug 2026 03:43:07 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7536c54e7a2b230c121a31fba623068569ac912d56542209959c4c59f19f58db`  
		Last Modified: Tue, 04 Aug 2026 03:43:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4dd0bfdfd93368122f5be7aa028bbd31049a0669a26d1129062e330758d1d1`  
		Last Modified: Tue, 04 Aug 2026 03:43:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:7f616b9732f5b6498f793460bb97910faaf9d4faa5eca73601eddff4b08db559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f847dbecabd54a23fdf6c0456886fa6e6f0b0c2ae1259a8cc4d6a2d2a5507ca`

```dockerfile
```

-	Layers:
	-	`sha256:614dd388fa2c3bcabeec347c26a41cdec92409bb4147a8f9ea483b5fcd14e95c`  
		Last Modified: Tue, 04 Aug 2026 03:43:07 GMT  
		Size: 3.1 MB (3113573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:629d337454078a80ce44a2d358dfe20bfa1b49a8a6aa1bd5098b2c98227659c9`  
		Last Modified: Tue, 04 Aug 2026 03:43:06 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
