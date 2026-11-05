## `maven:3-amazoncorretto-17-debian-trixie`

```console
$ docker pull maven@sha256:ff6baecf16ea50f62e24ab44d9d1798a2190cbeedaea76c70cca60a6f16bbcc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:599b695d2f6aae407a59414dd31c9b4bf5a5b66723ff6902563688aa88282ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241863068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2d0d9b96e7ecc7d29f33a9484d7b84e45364f1d8d9fb8f293519870d8a52bf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:12:46 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:12:46 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 08:12:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:12:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:12:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:12:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:12:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:12:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:12:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:12:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:12:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:12:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:12:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:12:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3999eb62a52b6ddb9ed9508b31a8284ea759d881405566781f839087f2c3f22`  
		Last Modified: Thu, 05 Nov 2026 08:13:08 GMT  
		Size: 201.9 MB (201946917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9611896db1e2565e23ba0c68fb37708c33512e40f775cf21d95215be7d57c601`  
		Last Modified: Thu, 05 Nov 2026 08:13:04 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33dba9a2e9c2472e79afe0e785e1225b5c5f9922aeb35ab0866f1ce2f67538b`  
		Last Modified: Thu, 05 Nov 2026 08:13:03 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a8827e7cd0235e4092756106f9c8998698d76a97311f75801d0d10dbd82a3c`  
		Last Modified: Thu, 05 Nov 2026 08:13:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:a74ee720f0ad6310f794b75c6b41656960f4ec8d879b2fbebea83b661198e954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15dacbb911743012b616fd23bdee28b77389107bc08d5544e1996a81c31d228c`

```dockerfile
```

-	Layers:
	-	`sha256:cf1c4addf2bd82b6d296aaad0cb00a5b23dcb88b1aeccb1df6326a7295acb8ab`  
		Last Modified: Thu, 05 Nov 2026 08:13:04 GMT  
		Size: 3.1 MB (3114609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a363c9e31ffc575d16e116e0f2414f735f77d180d20fd58964da19633e9c90f6`  
		Last Modified: Thu, 05 Nov 2026 08:13:04 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:05fdca47253ae2d4f60fc19190b5a61af1597b7a2fcbaac6c3c7f0290c653420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240890273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614f1b737d6c90364016f6669d7eac68aa45a657f171bfff56b0aea71a62d656`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:22:23 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:22:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:22:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 08:22:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:22:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:22:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:22:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:22:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:22:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:22:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:22:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:22:24 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:22:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:22:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:22:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c46820353fc715a74033623d8d7a851d8e7c39563d7a9e5a14fd648d9c53adb`  
		Last Modified: Thu, 05 Nov 2026 08:22:51 GMT  
		Size: 200.6 MB (200616265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eeee436a41e7837437e4861b9cbf53e273735b007aeb6b19b9e62d8bade9fbd`  
		Last Modified: Thu, 05 Nov 2026 08:22:44 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e83ab1ad1abf550d3c373b0b2d6ea0cbccc4a4087d0b53c2234cdf2a06c7567`  
		Last Modified: Thu, 05 Nov 2026 08:22:43 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ae92bfa762b04543986bcc2390b2dda8ccf46c559bcad4d5228143aab25b22`  
		Last Modified: Thu, 05 Nov 2026 08:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:588b628f0584cce73d6a38dd06b1bdb434c282d7bf1d086dbeba0951abcc2229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087fc8da9d579f4caf55741a5ee79a653c308e0adab1b823e9156875ab3271f`

```dockerfile
```

-	Layers:
	-	`sha256:0b70418704c9e5f6c5b9725e71aa0ee72b69f50744fb67176e3c61b655ab61ef`  
		Last Modified: Thu, 05 Nov 2026 08:22:44 GMT  
		Size: 3.1 MB (3114264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d2f3f8a793c081d0ebdb21ed69d8a646f5252cd23d7130d21095cef834fb467`  
		Last Modified: Thu, 05 Nov 2026 08:22:43 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
