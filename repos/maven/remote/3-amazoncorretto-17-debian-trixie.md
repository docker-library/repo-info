## `maven:3-amazoncorretto-17-debian-trixie`

```console
$ docker pull maven@sha256:ec079005f96e9bf5b13f34cc3d64076bae5f306cb2af1abb3a079f62f755f33a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:dfa0eb350b14aba3bd65aa6c27c70df446871a0a18db54e9bba54aa148e8b164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243735495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff670da1f992d86c079b78cca89c818ca8df0ea6865d433838232491ef2f6a7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:41:52 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:41:52 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 04:41:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 09 Sep 2026 04:41:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:41:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:41:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:41:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:41:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:41:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:41:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:41:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:41:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:41:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baea943625c09bd745e775c80dcd632d2fbae76780d501507b5d27be2bdc9768`  
		Last Modified: Wed, 09 Sep 2026 04:42:15 GMT  
		Size: 204.6 MB (204581866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01af05ad865ab3b4634ecb89b28496de10584055f05ff2cf2412eaad01d6ad6c`  
		Last Modified: Wed, 09 Sep 2026 04:42:11 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc42cc34bb1bdaa61bc9f01c6e3db4b56650c87534d756921d3ce660b9063bc`  
		Last Modified: Wed, 09 Sep 2026 04:42:11 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10417febdef304a414ec24b5696ef0abd9fe60d49e1096b7462011c70b195f07`  
		Last Modified: Wed, 09 Sep 2026 04:42:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:dcab1a7bd0d01fab377d39c0a8ed01e954ef2cb4d4ffc211aa7213e9121d522b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e95897412875d4025fc4267b1f8651c7820da1080a5f40e855cafe735eb532`

```dockerfile
```

-	Layers:
	-	`sha256:69a71ed90594b1438fb25c55ed2e24a30ffaafcc876e30d2ba52fc252cc4628e`  
		Last Modified: Wed, 09 Sep 2026 04:42:11 GMT  
		Size: 3.1 MB (3105124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be263446c14b245992ff1535a07616a45e29a41c770ddf62de207990dfb6c45`  
		Last Modified: Wed, 09 Sep 2026 04:42:11 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4cb37240a20d7cd6075b8e4b1a116afb893bd415ed4068f755568888e917039c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243092154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696434a6362d522f8e05c5e570439c2bde96939eba52daa22098c052ef81dfc5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:26:55 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:26:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 04:26:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 09 Sep 2026 04:26:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:26:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:26:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:26:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:26:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:26:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:26:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:26:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:26:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:26:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa8f33c453e3e730a76c683e79c53ef78ea50a08e0e6737081c2afd8612cac7`  
		Last Modified: Wed, 09 Sep 2026 04:27:19 GMT  
		Size: 203.6 MB (203571599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2696ce85611a5215925e3281a24cb7168ee71ffa2fc6348605aab5c3d8c968`  
		Last Modified: Wed, 09 Sep 2026 04:27:16 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f225c59fdfb2d2ce325a13cd89dd68a1801b9caa5ecc8da92336672ce2b5a6`  
		Last Modified: Wed, 09 Sep 2026 04:27:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f8487cc83dea8dfa59ca1684d102cfa19c720900e662b8e837856ec06f3b05`  
		Last Modified: Wed, 09 Sep 2026 04:27:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:b0961d2cb5d02256d614b73439802d172528e58844288ea6fd76b26bf43e57cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b84038ee12fffc0728584f84fc7ff6a8cfc68744b5d0b330e8013f3000acfe6`

```dockerfile
```

-	Layers:
	-	`sha256:a9441f19424c050503425692377b3ff6a2109964f7637de09da25bb67d421fd6`  
		Last Modified: Wed, 09 Sep 2026 04:27:15 GMT  
		Size: 3.1 MB (3104779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad392934b12e82df854cfc378dca303f5fb1b77e57318e4caae91979801b24`  
		Last Modified: Wed, 09 Sep 2026 04:27:15 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
