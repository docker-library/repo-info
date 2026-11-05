## `maven:3-amazoncorretto-27-debian`

```console
$ docker pull maven@sha256:d15124ce5fcefd45b2065ae7ee8cfb68f919891a3b22b4f429bc1c1ed2848415
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-debian` - linux; amd64

```console
$ docker pull maven@sha256:83846e69dbfc77f162b09123d116801b43221c5174a9a21f7b98af5c09a5da0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277763462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508fa58570165c2928d7aa724d67e2f94ed8fc45353e3f95486a3cb9addd0356`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:13:42 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-27-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:13:42 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 05 Nov 2026 08:13:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:13:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:13:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:13:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:13:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:13:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:13:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:13:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:13:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:13:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:13:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:13:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0544cd1f69ff8563c1c532cb9b3472b23f3af32a28ff4d9b6f65bc335b1e55`  
		Last Modified: Thu, 05 Nov 2026 08:14:09 GMT  
		Size: 237.8 MB (237847311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84e918b47cf7103ee922ae47007b88bd66eebffee023872d39b13d8777f6067`  
		Last Modified: Thu, 05 Nov 2026 08:14:04 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4658a987178a085e243cd59ae4b393dc792c92cc3e089d3eef75b34207b189`  
		Last Modified: Thu, 05 Nov 2026 08:14:03 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acbe3f00ca96e0acf63d475d0d8b8ecf1a6d2205795505b4f5ec4161cbcbc6`  
		Last Modified: Thu, 05 Nov 2026 08:14:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-debian` - unknown; unknown

```console
$ docker pull maven@sha256:09a9f26cbc564a0c313f94f10fc7bad8c4dd5897aed51d03f770079ea03fd1ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3126707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b70cf9276c290f94f6408c0060f43f97e7653b4fc063174eb16975c3d6a44077`

```dockerfile
```

-	Layers:
	-	`sha256:f24738ec5d6f4c61a82a2b28723f77532c01aefaf549f0ec2411e2f143be88ea`  
		Last Modified: Thu, 05 Nov 2026 08:14:04 GMT  
		Size: 3.1 MB (3109174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b45279236e3c7fa232504e564f59beb22fd9ff3b8114a54c5ad1f0603d60562`  
		Last Modified: Thu, 05 Nov 2026 08:14:03 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:157661dc3663cf5a954c1eb76cc40563cce18a6b9d357a29ca6f39e157d88ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275858953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8c1de031ed992da7aea7b3e8641ce716842c32a73dd3322d1571aabb9cdc39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:23:00 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-27-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:23:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:23:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 05 Nov 2026 08:23:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:23:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:23:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:23:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:23:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:23:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:23:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:23:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:23:00 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:23:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:23:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:23:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189f1bb012ad3ca954330bf906ba030637025cceae75aecfc067b83c3945d42f`  
		Last Modified: Thu, 05 Nov 2026 08:23:28 GMT  
		Size: 235.6 MB (235584935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca2c6644e7d44cf4574df38720e0dd1a7475bef49ca605906000614290857d7`  
		Last Modified: Thu, 05 Nov 2026 08:23:23 GMT  
		Size: 10.1 MB (10058974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3215ae12f9050da86c5a0fd48e0bd1bb731862d58865e4a86b6760d572f3922`  
		Last Modified: Thu, 05 Nov 2026 08:23:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41db587f7dfc5139c72da477fbe5ca2cd61086a135d28e7bbbb13588baa3e315`  
		Last Modified: Thu, 05 Nov 2026 08:23:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-debian` - unknown; unknown

```console
$ docker pull maven@sha256:64fa4faf5821377e1bcbcb028d97ed436ef81d9b4ea4cbadd955f0a5394b764a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3126528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552fc43dae047a89245294482c399ff4d4922cd1b1fd779ca9fd1181416211c7`

```dockerfile
```

-	Layers:
	-	`sha256:8c5d980a3091d4c437508ddaebf83678dbb6548532627eca92148960e73d2bc7`  
		Last Modified: Thu, 05 Nov 2026 08:23:23 GMT  
		Size: 3.1 MB (3108826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7929092b75d2cad426be814b42428ee66dfa9f8a1e6ae7a6944a9967adac5ef`  
		Last Modified: Thu, 05 Nov 2026 08:23:23 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
