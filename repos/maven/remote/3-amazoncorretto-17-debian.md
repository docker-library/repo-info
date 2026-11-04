## `maven:3-amazoncorretto-17-debian`

```console
$ docker pull maven@sha256:d5acf4010d183f5e9a8fa52154edfc6e4961474b99a69a0abd90b9e890707eb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian` - linux; amd64

```console
$ docker pull maven@sha256:db2504d789c4852a1582094dfe7f1b72a914ecead1ddb5a55371f76bcfe7168a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241861985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe9c92a47d99e69bfc9888d3a8731a5bdd6d34bced8381f7822291000268e84`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 23:09:30 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:09:30 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 23:09:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 03 Nov 2026 23:09:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:09:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:09:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:09:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:09:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:09:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:09:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:09:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:09:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354dc02106128c3a5278ee3fd58626eb0e3f760bd2943d8587afe7fa57c06782`  
		Last Modified: Tue, 03 Nov 2026 23:09:56 GMT  
		Size: 201.9 MB (201946733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a578e33ef6062e27d9fec9dfc91e9542c9f2b2e403cf43dcb5001cbf3ff522`  
		Last Modified: Tue, 03 Nov 2026 23:09:50 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7893d265fbf1f4b7d6951efe5157ad6b8f91496f3f224924a47484fa3336b7`  
		Last Modified: Tue, 03 Nov 2026 23:09:49 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c47a6b567acb41a6074b9baf96074c22051513416fed44558333ce1a87deb4f`  
		Last Modified: Tue, 03 Nov 2026 23:09:49 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian` - unknown; unknown

```console
$ docker pull maven@sha256:0a0401e13da5fa92cf36afc81774692c20a348c62f8a5be03a09c474c66423dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c843e2a5182639e7ceb1a4647c53dc7c5b7b50b2dda570da60e87fdec099f0`

```dockerfile
```

-	Layers:
	-	`sha256:e343b5c5eb822729bb2a6fe6d7005f37a677756258b6fd340c4180bb97b7f56b`  
		Last Modified: Tue, 03 Nov 2026 23:09:49 GMT  
		Size: 3.1 MB (3114609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c6626cd2cf158c44e7ccba39615a72c7eb5f50b5e2227de74e904993a24037`  
		Last Modified: Tue, 03 Nov 2026 23:09:49 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:2396dd77ab71a09b7cd32fe0d8558ac8b29e3fd6dce7bd585d3391a0bf05a3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240889512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e6a11762c993408bd075e763842c645adfd9c3ecc92994cc4d292bd9a0ad98`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 23:15:30 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:15:30 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 23:15:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 03 Nov 2026 23:15:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:15:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:15:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:15:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:15:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:15:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:15:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:15:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:15:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:15:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791f6abf1ff2dc954db2810ca2496ca0747a1f1cec10cd6e12f8b0af72aec6e5`  
		Last Modified: Tue, 03 Nov 2026 23:15:54 GMT  
		Size: 200.6 MB (200616044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d9fdffe83030dd2364e571a28e26217009b1c63942075daf65df72d0a0e3ad`  
		Last Modified: Tue, 03 Nov 2026 23:15:50 GMT  
		Size: 10.1 MB (10058965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e279d3ea3efe0edf93a47768275a30f03a66814e0c21a4192687794518176cc0`  
		Last Modified: Tue, 03 Nov 2026 23:15:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2055a7fa77d6142a328f72a2c36e70c4ec7b28a6739c39a6971ad1e1a20f3509`  
		Last Modified: Tue, 03 Nov 2026 23:15:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian` - unknown; unknown

```console
$ docker pull maven@sha256:16cd76580a00310569eb845efa4b1cae6e8a53d3935798008fda18a5646c1495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cbeac2f9ff1dcb8b04328b24e30abd36996780cc8f21a693f37711543ffdea`

```dockerfile
```

-	Layers:
	-	`sha256:591b8d125b3af13ef6b4a66d0e0086cb69b52ca1e49785c29945c11cbbc63415`  
		Last Modified: Tue, 03 Nov 2026 23:15:50 GMT  
		Size: 3.1 MB (3114264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec5d2c9aa986015ed2587ca218ca03390d686dae35abcf92a11dc9c0cd38acf2`  
		Last Modified: Tue, 03 Nov 2026 23:15:49 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
