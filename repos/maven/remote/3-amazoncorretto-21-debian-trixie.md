## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:2690baad1c633b24821cf94599d8d99266eb5ae5d95d30d84eb54019adb7524a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:8ba3791b877021d0e507e164f2b5d29d6d9011bd54ed2a893389d6fa4b53b5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258876003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1232d5b9b57cf01b269c65160cbb44d2e94b8b177c143beaded9c2bfdde2c0b9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:22:44 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:22:44 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:22:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 16 Sep 2026 05:22:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:22:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:22:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:22:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:22:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:22:44 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:22:44 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:22:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:22:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:22:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93645a4e6e93fe69e9cfcaeb9cb3eede3f280ab5a63c44a9a2f5b2f5b57f871`  
		Last Modified: Wed, 16 Sep 2026 05:23:09 GMT  
		Size: 219.7 MB (219722365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be286b142bc816c4df0a6f3a4ef3469d63d4cbd9df69fd3cf7fd86ad0fdf2e9e`  
		Last Modified: Wed, 16 Sep 2026 05:23:04 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efdef9c6e37089daed9452f3a14905f2304a22d48246512189c0cb54fa1e981`  
		Last Modified: Wed, 16 Sep 2026 05:23:03 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a0e8da01fe48e4f94c0abe4114c36543b19cf3bc0f809d8657751127fbfb7`  
		Last Modified: Wed, 16 Sep 2026 05:23:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:5f484231e9600f6bce5f4cc02e5fffeef55df3d59d9696a5e9756fabd9a13940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579c9428ab36343305b58c3855d422478bc2819105f6ce45dea2d6efc07fba9c`

```dockerfile
```

-	Layers:
	-	`sha256:201f889e5e01af65b9bd917b11655cca913080a47e24127f3150d576f0b0307e`  
		Last Modified: Wed, 16 Sep 2026 05:23:04 GMT  
		Size: 3.1 MB (3105025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86946d48f03e7640ca3cdb765884ad65ac3a4c98157ca4acdc288ed4700068a0`  
		Last Modified: Wed, 16 Sep 2026 05:23:03 GMT  
		Size: 17.5 KB (17525 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:460da56595c22d95dce9fa1374b613cdfa4d3eb49efd4b5a467e1f296dfa97f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257754292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa535199214cbcb841950c2c0ec4a46a937ea9b77fc70e62d4cf323c4a5ed266`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:22:35 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:22:35 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:22:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 16 Sep 2026 05:22:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:22:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:22:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:22:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:22:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:22:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:22:35 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:22:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:22:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:22:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6324071b40dbeb074d280f9c0780cd02981b8557659130c5b45d8e11dab7e50`  
		Last Modified: Wed, 16 Sep 2026 05:22:59 GMT  
		Size: 218.2 MB (218233733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72b1c2c49225d0a644a6e0f5360990806845c80a697296c099143f09e182b12`  
		Last Modified: Wed, 16 Sep 2026 05:22:55 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a9361d3d97aab41ded9d26cbaef2abccc3d7acd0caa5ae4cd7c7401876af9`  
		Last Modified: Wed, 16 Sep 2026 05:22:54 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266a2232a8e61774d5ba9e638aed1ac2c650211ba7030aaea0c26476c0d02c7f`  
		Last Modified: Wed, 16 Sep 2026 05:22:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:4fa46136dec54c42d9d16da8f5f161e3cff8d464fb0085a1f740588d4f89ce95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628cbce3f282eab9500b769345f989bc68045c78f947c2c3d48dce3c493617d9`

```dockerfile
```

-	Layers:
	-	`sha256:7cf05278b0c7b85c7ab0c093bfd99684af1d52a282e1148e1847c5816fe52c18`  
		Last Modified: Wed, 16 Sep 2026 05:22:55 GMT  
		Size: 3.1 MB (3104680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5424433a0e130c6bafffe8cef9639eceb363fc4b1f9312e9651c8c1b216c5f9`  
		Last Modified: Wed, 16 Sep 2026 05:22:54 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
