## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:ae98f481a8c4ec1b196401a24f9993c36cd9eb07ce6fc4b0a169d26a57062956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:13937df9d501e00bf69315def9ff2fb4b615149ce47b6c2911bb27ccdb0fee77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256025806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83240f7210f155bd05674297c04d96fe59142352268e05b97ea1fc0b65edf3a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:45:47 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:45:47 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:45:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:45:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:45:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:45:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:45:48 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:45:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:45:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:45:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ec44cd7b84e47463589da314b36029a769f3e37ea8a13b70522f74d86b2413`  
		Last Modified: Thu, 02 Jul 2026 06:46:11 GMT  
		Size: 216.9 MB (216879409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8287686d0d4730ce3a6a71553746acf13b5d70a2cf1e90d10752e82c835dce`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ba4cb01e9edf74e5c5d417f601163b3273e9aef11520335f267edb2830db17`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94af07d9da7f4ae1c6d4fbb9d0974f7e712379af6b516b67ffb98ff011ca75bd`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:d719d5b710b1a0734fc6e18c878d405c0d1ac6215e7620c9e7cbbb19ff879f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16bd63e175535303b8692237fd8bc25442cbb24048851f0669b8d5b1421d37b6`

```dockerfile
```

-	Layers:
	-	`sha256:5354d1c98cca68b08d45e3712b6afe8ef1c41b55d3b2f2f232ce249ecae7ac6d`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 3.1 MB (3104789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d616f0231b8a712be6700ef2f3f1f1222e6813dc1eec6bf4a8720132e00126eb`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:761514c9d782c67c1444449bbf630f4f797c990607e7fdc893e2efdac967856e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254439160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c2009a8e91addb5b3f181d686ca82e833e2ed713372490bb664f2e41503ff2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:40:02 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:40:02 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:40:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 02 Jul 2026 06:40:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:40:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:40:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:40:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:40:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:40:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:40:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:40:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:40:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:40:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:40:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:40:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a3fba8196ebf8ea6ff5604f8022e8c6a4e834ce11e6f7c43a19471e8bf530a`  
		Last Modified: Thu, 02 Jul 2026 06:40:26 GMT  
		Size: 214.9 MB (214929628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13911b01e691675165fb5dc937f417c4c07c60baf1abd71ae42ed2b6ea1912b`  
		Last Modified: Thu, 02 Jul 2026 06:40:22 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049e370ba5163dacf63fa722056ecb57afdd21d66869ba8817aecd7f75760869`  
		Last Modified: Thu, 02 Jul 2026 06:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518aad372d2dff59918251e2da6de7e2abacb394bf10131f1a7ee450eed7bf47`  
		Last Modified: Thu, 02 Jul 2026 06:40:22 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:7b60bd0340c21771a46e90bd5ff99392cc62def13f12a0ac8f2acfad460beebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927ebd9796457b110f4ce214dcd32471eb5e6bdb291c630011d6c0cb595ddc22`

```dockerfile
```

-	Layers:
	-	`sha256:064e0139edefb3d21159f175a3bd260e115709dad07198919a88aa3447e08b8d`  
		Last Modified: Thu, 02 Jul 2026 06:40:22 GMT  
		Size: 3.1 MB (3104444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07adfacf68f3c696e9986d51f974a7e0c1916c7d4baf8e94b09f2d8318cd5dff`  
		Last Modified: Thu, 02 Jul 2026 06:40:21 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
