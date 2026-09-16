## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:0481a7c4cceaa4d788dfbaa9a84304b3e124e13e8fc377c3b7382515fb8bf280
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:5e28a08c3bd01217a621d2afc1b355cb7945ac62edf5912a78f018ab0d905735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277754446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624dffd93bbbb12f5add251d644a32786760062eaa597b6f503748d8c8720089`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:23:20 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:23:20 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:23:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 16 Sep 2026 05:23:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:23:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:23:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:23:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:23:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:23:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:23:20 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:23:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:23:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:23:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3025bb235d81ec34300fa987b76371b2b2a779e3effb4767a2a3257eaf673d`  
		Last Modified: Wed, 16 Sep 2026 05:23:44 GMT  
		Size: 238.6 MB (238600818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa82e77c627a730ec160bfa0546a10f51f16e84a2b72c91bd23e87af295620d`  
		Last Modified: Wed, 16 Sep 2026 05:23:40 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571913523c5f331f008506914fd2cb69f0cbd3a26806b12cf11dee9e140ac9fd`  
		Last Modified: Wed, 16 Sep 2026 05:23:40 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4ecc49cfe9edace972b5a19d3a94913bd6274a8bb3262aa980f3999d0212f9`  
		Last Modified: Wed, 16 Sep 2026 05:23:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:1d68d94e9d476bb6b5f838a789b209d5714359407224fe62a6726c5fc0596a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ad69293788feaabc84ba6f08db73d35a4fde90f945487dddbe09dd0c0525d5`

```dockerfile
```

-	Layers:
	-	`sha256:bbda69c6177dfe12a55f7cbdadd3ddf6da4df45efbb1f362ae682d39edac6e23`  
		Last Modified: Wed, 16 Sep 2026 05:23:40 GMT  
		Size: 3.1 MB (3114123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1408cc1d85dda9e79d10d87b470f364c7c4a918976cc0cd1ade37ed8321572`  
		Last Modified: Wed, 16 Sep 2026 05:23:40 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a47f072f7dcb1eaafe31b9c4bece774be629a30c06fba14e28bc826c172d7233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276186592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34c87535ca1849708a852e1e1a72a52c6a5bc55e3c4a416fe89f30d1c3ed981`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:23:17 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:23:17 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:23:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 16 Sep 2026 05:23:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:23:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:23:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:23:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:23:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:23:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:23:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:23:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:23:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:23:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3057ce2997e5197f74255ba7604c937f27312763cb8c54b71f13ab08d987bf`  
		Last Modified: Wed, 16 Sep 2026 05:23:44 GMT  
		Size: 236.7 MB (236666033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575270ba806333afe2b6a52cea5c73eae064350296d352aa0b050c02f886c964`  
		Last Modified: Wed, 16 Sep 2026 05:23:39 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457941d5680dd139c6d254c21bc4e52584c79315d01b46eb2834ca0f39108085`  
		Last Modified: Wed, 16 Sep 2026 05:23:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4815d06ebe816d13ec85a5be7507dc27e5bf18ec3861d5b919f8ee159ca23e98`  
		Last Modified: Wed, 16 Sep 2026 05:23:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:217a53d0f534b2929ffd587a65296898232c26d2c1c1fa272f900e855d4ed6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa5df8aebe860a2ee5864ae5c622104a1baf5fcb4c65a6be90103ffd32c6a5e`

```dockerfile
```

-	Layers:
	-	`sha256:20c45993baa000d87f0c653817e419b86ab181de8f2df1a8e60c87db30d8e200`  
		Last Modified: Wed, 16 Sep 2026 05:23:39 GMT  
		Size: 3.1 MB (3113775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec59fb2cee6dea862f9227a44c723f2c170e6a62fc5457a208cb30a73056256`  
		Last Modified: Wed, 16 Sep 2026 05:23:39 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
