## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:0353094050e3bdb6b6d4f56a28868d549b5b58c09c0acb21e2e65f15dcb7b96c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:e10443e2a208a81176040e1501c207d15716db67b13e197e3de315b29c21644b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149502986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5ddb37c429995598e3dc5a9150a2adeeb8d1d74a71b9b41764c62561db4690`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:18:48 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:18:48 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:18:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Sat, 17 Oct 2026 03:18:48 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:18:48 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:48 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:48 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:18:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:18:48 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:18:48 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:18:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:18:48 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:18:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:18:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:18:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a20cfb36ddbd220a3be8c8e0a8f16e43f536f9588456e28533b35699d4a989`  
		Last Modified: Sat, 17 Oct 2026 03:19:05 GMT  
		Size: 109.6 MB (109599633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ec3545fe5ed2293cb5bd3607422a2a8f7696ebbcddb7222737463946260651`  
		Last Modified: Sat, 17 Oct 2026 03:19:03 GMT  
		Size: 10.1 MB (10059002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7a02bc21cf5dd47dde83e53c9ae436b41c4d9c6af3cf58b1bcaf9eb9914a54`  
		Last Modified: Sat, 17 Oct 2026 03:19:02 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080a32c2c9bc95db4f77b9d6a2689c7a688133663ce38a5935101c75a0bffb28`  
		Last Modified: Sat, 17 Oct 2026 03:19:02 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:59a7ac669ee30d1df822c68818ae673f9e3db2e0c75a061325166d56be33d66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd314350961222546666ceb955fb4ce885c0ec8b7874d18055ecb4169801c0`

```dockerfile
```

-	Layers:
	-	`sha256:2deff5c7a3d78885156f16360d7e62bfea55e739be2c3fe163cd85d6269ae781`  
		Last Modified: Sat, 17 Oct 2026 03:19:02 GMT  
		Size: 3.0 MB (2975683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5287405b487558d9ab0c44534fbdd5672a6dd0b789d1c4da3637c429189ea2`  
		Last Modified: Sat, 17 Oct 2026 03:19:02 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a788243f1fed1e4030f3ef8b4f5da2355ca41bd1cead97887b7ffe9e6ad40327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149644594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf78df172a686e3bfa06a730304db8a2d3f19b3c5116e1bed364d6da7c9d7819`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:19:12 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:12 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:19:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Sat, 17 Oct 2026 03:19:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:12 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2261f04effcf0e6d38e5fff73723a3c2b2bc2f04bad91e91af080928ed16a3`  
		Last Modified: Sat, 17 Oct 2026 03:19:29 GMT  
		Size: 109.4 MB (109384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2901d1a2e86c771b19d6ca6416a4b5a032bf3954ca05bdb95c464152b8ad0a4`  
		Last Modified: Sat, 17 Oct 2026 03:19:26 GMT  
		Size: 10.1 MB (10059002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2757e73ed8216b7ba570214c0f741c0f55aec97a2a586e4361e0d484540d37`  
		Last Modified: Sat, 17 Oct 2026 03:19:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a46ec8a974f4958bc5e946dfeacd8c5ced1c7e2dbdf030319737f222b71c9d`  
		Last Modified: Sat, 17 Oct 2026 03:19:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:50a9545900d3c960b71f74ebe3608639b970da879b6ce47931c1ab6209408f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d08b9d074e942a98760da59741bd97d4ba4324b3c26b1bd2c7008a296bb9ce`

```dockerfile
```

-	Layers:
	-	`sha256:ed931de393da2b23aa9d9b86a0b8105d623378d7d865dc0aab7eeba579754842`  
		Last Modified: Sat, 17 Oct 2026 03:19:26 GMT  
		Size: 3.0 MB (2976055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38eb1b470721bfc0abd97ddd4a833e50a87599cc1d4fdda06f46630b5dd71366`  
		Last Modified: Sat, 17 Oct 2026 03:19:26 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
