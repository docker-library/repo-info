## `maven:3-amazoncorretto-11-debian`

```console
$ docker pull maven@sha256:02ab71f7c71b7a1331a4460ddad21020e4e9b785faf2ecd3de3d04fc1646124f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian` - linux; amd64

```console
$ docker pull maven@sha256:f6e53a399e072fcd66f681045e25a11a3c0caa3457c3d379f3bb8ccaebe3f920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242755783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3026238eddcf549cd0e965bd3f5bf9036b637817c5f6ac8ea89a7dd98094e99`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:08:18 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 19:08:18 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 19:08:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 20 Nov 2026 19:08:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:08:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:08:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:08:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:08:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:08:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:08:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:08:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:08:18 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:08:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:08:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:08:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f8ff490583c3f025d7f3eb7c30f37333539638c4e09cba71c34affbf1d2183`  
		Last Modified: Fri, 20 Nov 2026 19:08:41 GMT  
		Size: 202.8 MB (202839640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812fb5b44b509dc78442da9d9a9caad8411aefb6f85619941f9b82c7370a83fa`  
		Last Modified: Fri, 20 Nov 2026 19:08:37 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf01135257ede8b5f2b2a48e8b542a422b2e8ad41580f66d9196a1e2d48a473`  
		Last Modified: Fri, 20 Nov 2026 19:08:37 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79da787d82e4ac9d231606f120fbbc7cae53298fc897a9a6d07d87b386805d35`  
		Last Modified: Fri, 20 Nov 2026 19:08:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:6eb962c6222d56fb4b5767d25fbde1d4bf4a534095d35775157bbc812ed482d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e59835d51956c4540ab0267d4fc17927e9e79ac7535daaee0ae053ded6173453`

```dockerfile
```

-	Layers:
	-	`sha256:c3ed3d9efa20ece42317f452691e583bd06d4a5e129a817605b9405e9490dd90`  
		Last Modified: Fri, 20 Nov 2026 19:08:37 GMT  
		Size: 3.1 MB (3119760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1858b21dba1a0ebb1ced48319c4a9c593f0ec90e4d6d1eec06232302cf29ccd7`  
		Last Modified: Fri, 20 Nov 2026 19:08:37 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian` - linux; arm64 variant v8

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

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

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
