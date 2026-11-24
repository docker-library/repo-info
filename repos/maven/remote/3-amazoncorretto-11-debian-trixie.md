## `maven:3-amazoncorretto-11-debian-trixie`

```console
$ docker pull maven@sha256:143f72abe08987774641ffdcece85ba61e7edb0bc0867ec301ad67e831089e7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:3a8c6cc104ea9187a01f338bcb3322ac1b635337c9ebd7cb26e4731100da6bed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245022500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99316b1aecedda71ef4ff68d546acf38cc851f34981b05be647473c97e5a24eb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 23 Nov 2026 20:12:32 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 20:12:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:12:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:12:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:12:33 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:12:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:12:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:12:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4c2029294a099586aa721a4673ba6d18960f217135ae45f722516108a925ad`  
		Last Modified: Mon, 23 Nov 2026 20:12:53 GMT  
		Size: 205.8 MB (205814060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc04a044f999017b30c17392203e2d0ae3c2e41e05a48597c30b61686f13a6f`  
		Last Modified: Mon, 23 Nov 2026 20:12:49 GMT  
		Size: 9.4 MB (9351305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d3a0b9750e2db87fec44e2034ae9c62b60cc2e837764f41f8be55cdba4bdc4`  
		Last Modified: Mon, 23 Nov 2026 20:12:49 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cd7d4d656520f7f74c8fd867258d56f609c3aa24eeaaa294e59bd9622931d9`  
		Last Modified: Mon, 23 Nov 2026 20:12:49 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:25db643774e87bc6d6c0acb08b5b1e775497746f94da27e3a8ff501ba7c831bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3130982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e69c23a4ce0444ce13bfe817e19829ba6f44d2aa7d62fbad49b5ce31a62ba42`

```dockerfile
```

-	Layers:
	-	`sha256:bbdee5e7e1b5c15e44170cff7774a1fd2769de712acd61ebed76606001eb443d`  
		Last Modified: Mon, 23 Nov 2026 20:12:49 GMT  
		Size: 3.1 MB (3113454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81da0ed83ef50f4a18d346e5c657934aac3929264596bd893175ead638dbc5ee`  
		Last Modified: Mon, 23 Nov 2026 20:12:49 GMT  
		Size: 17.5 KB (17528 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:31ad967ffb50b2c323780632ad8b051342e8203be17727bfb2c0685f79de53bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240188671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a0884b76d2e4d92507479192c41aa20e088d886a8745cf3854ab2d6266ae19`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:13:13 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:13:13 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:13:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 20 Nov 2026 06:13:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:13 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a17f2c7aabd7aad00303239a7cbe3e9484dbcc74e761d471baedd83d7c141e1`  
		Last Modified: Fri, 20 Nov 2026 06:13:35 GMT  
		Size: 199.9 MB (199914612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c213618f66f987f0f4c6223011fe25bd93fe0830f1956a1ff587dc63728c20`  
		Last Modified: Fri, 20 Nov 2026 06:13:32 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409792d0ab31ee30b67971f1482b4f4a15f48bfa060aeb52bd05a8cacc62f572`  
		Last Modified: Fri, 20 Nov 2026 06:13:31 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2996436e99a086785dec42365b4e0c59a62c71fdd2395179181ea01a1622b395`  
		Last Modified: Fri, 20 Nov 2026 06:13:31 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:19ae4fb44a2692f8c8d2c7c1ecb4daed5c8bfa9440b74e5221b24ebed971db32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f174c4b18e30864bc5818153d63dc6e17914ade31cec4e6b70bdf8668089270`

```dockerfile
```

-	Layers:
	-	`sha256:7cd7c1748779f7409203727fdd2648b2abba277951d0709b1758a614bcd8957d`  
		Last Modified: Fri, 20 Nov 2026 06:13:31 GMT  
		Size: 3.1 MB (3120052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20b918996b585868e2906ac9ab6a8aa424a79ed043c4d564d430b1edccc7715b`  
		Last Modified: Fri, 20 Nov 2026 06:13:31 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json
