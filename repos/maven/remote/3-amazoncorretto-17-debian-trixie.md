## `maven:3-amazoncorretto-17-debian-trixie`

```console
$ docker pull maven@sha256:2e0c56fec464dbc4849a5e82474fa77883210372db751efd6e2a38520d1a0bd2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:cc248819a6bf8e124809bb9d10cfca7740c9f95a51e2155ee38a4907b035ef06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241889397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e92c876e45c5426f8e15030ec8970a8a788a3a0ff75992293487f0381e3dd8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:16:44 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:16:44 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:16:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 20 Nov 2026 06:16:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:16:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:16:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:16:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:16:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:44 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:16:44 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:16:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:16:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb2d6788c83f7c1dfb0442f2a12228d55278ba67100f896498dd65bda842249`  
		Last Modified: Fri, 20 Nov 2026 06:17:06 GMT  
		Size: 202.0 MB (201973238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c8829b4d3369822d4639767f3ff2ea037400dbab7c4491bba74809e6f2396d`  
		Last Modified: Fri, 20 Nov 2026 06:17:02 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e87eb94a36526a7b235b3fe6e7ebdc75e7712859884a007c1810ee7ab5ae104`  
		Last Modified: Fri, 20 Nov 2026 06:17:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f203dfa1b5465523056b5ae1ea693d19162145290296b7e1b41335a7c5d023`  
		Last Modified: Fri, 20 Nov 2026 06:17:02 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:47befd5b29e9c9c98219a901c6028df056425a934e675416954675574fafd963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48119094e6296d77c08851672cfdee8110487544bb587c779230caa3e7ec4f0d`

```dockerfile
```

-	Layers:
	-	`sha256:67b7965e2aeecb903613e33c3b58dc8d02210a090f497c9aa06ed79fa9cec0b0`  
		Last Modified: Fri, 20 Nov 2026 06:17:02 GMT  
		Size: 3.1 MB (3114611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:749b7202d35524b9b9e22ff264ab1b253655baf6e13470d259103571b5bd032c`  
		Last Modified: Fri, 20 Nov 2026 06:17:02 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ce7f36a1aab9060720751a5b68a40ee73c621fcc87da91d414d4432b8d3ecb1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240919961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265f8d00abc0f3f8999492d39f80cd03b97717a9b8bfbc0b6a1c75f769d3a319`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:13:20 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:13:20 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:13:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 20 Nov 2026 06:13:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:21 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8187de1d70ddd10c644ea6f43216d924a908e495918ba87a287e47baefc37ac9`  
		Last Modified: Fri, 20 Nov 2026 06:13:43 GMT  
		Size: 200.6 MB (200645910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7244600352bb119fcd59ad6912b2c4aa10c9c4c52a70936f83ddddb90d0615`  
		Last Modified: Fri, 20 Nov 2026 06:13:40 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1929f506fcc2b69aee8382348fdcf6c3e0427ca9a56b2dc7765c22e75e380d`  
		Last Modified: Fri, 20 Nov 2026 06:13:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4afd92aaeebafc88ad2b533463178cc5311c6357ba8a88af194240e240df45`  
		Last Modified: Fri, 20 Nov 2026 06:13:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:93486325cdad1b6041b356a88933cae06f288d2b665fd886a34e06bc9495bc87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db5a6e343180c594212ad099387a659e7e80308a4d4fd28bf1af27355845cb6`

```dockerfile
```

-	Layers:
	-	`sha256:bdab3b5192ea390dfad895ec274ec84c0827d41a25f4e4e607ecdde15ae58462`  
		Last Modified: Fri, 20 Nov 2026 06:13:40 GMT  
		Size: 3.1 MB (3114266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f275d9701aabbe469f6159e1232b4df1176ac2b2b9307a16cab6c4d0504d3`  
		Last Modified: Fri, 20 Nov 2026 06:13:39 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
