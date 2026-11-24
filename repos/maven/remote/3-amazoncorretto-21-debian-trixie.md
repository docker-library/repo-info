## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:1705fde7e7ecdc5ec1ce48a3adb4330093091f21de89691466ca5c72c4f3a3e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:cec7183464c4dc75b11553998c9e8bb59a3fb22c981f11cc37f5585c83bed6e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256346230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8e2fd36035fd25990d968a81560245c90e2a46a295c36df7f2b6236f2b6521`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:05 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:05 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:15:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 24 Nov 2026 05:15:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 24 Nov 2026 05:15:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 24 Nov 2026 05:15:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 24 Nov 2026 05:15:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 24 Nov 2026 05:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 24 Nov 2026 05:15:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 24 Nov 2026 05:15:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:15:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 24 Nov 2026 05:15:05 GMT
ARG USER_HOME_DIR=/root
# Tue, 24 Nov 2026 05:15:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 24 Nov 2026 05:15:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d104f43148d9baaabcb835aeae3770695425aff05489d9a5de8e29a07f5393a`  
		Last Modified: Tue, 24 Nov 2026 05:15:28 GMT  
		Size: 217.2 MB (217151761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a6cf50109fc9a870b73a096dbd74a2887503e96e2036ed1cca22e33debd72`  
		Last Modified: Tue, 24 Nov 2026 05:15:24 GMT  
		Size: 9.4 MB (9351286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7816d287bba56cf9e644cb752ca5a853969edcff9427a83e3149826aa5f37a4`  
		Last Modified: Tue, 24 Nov 2026 05:15:23 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6445a9eff3ef75f2150cb91192097a87f7ab10b5575f5e89649fea76dfb08801`  
		Last Modified: Tue, 24 Nov 2026 05:15:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:4c4d65b8ca1ff6eb6036583a42f6d1c2ff0dcddc383bcca37b8804483fe631de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3125765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25cb9b0c6e1bbe07c9eed1744c0d85bd29e5f343d606b6c24ca0fe25578c2549`

```dockerfile
```

-	Layers:
	-	`sha256:57f64ae7f5df1368e6ef3b044d92e8c02d51d7cf4859a4699cd54c844242bc44`  
		Last Modified: Tue, 24 Nov 2026 05:15:23 GMT  
		Size: 3.1 MB (3108236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1160cf39a7cd2de8454bd4843241e41ba1d87f48021fe9fcf62afd8a93f11540`  
		Last Modified: Tue, 24 Nov 2026 05:15:23 GMT  
		Size: 17.5 KB (17529 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8e833a39d1df89f4b7b1ea93f6de142160d1a4ccb982baf3a61d30e6f580c5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255568226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f2ab891ef619e5ec0821ce69e7b2b4e14be2b992ea9dd497976b3d77f48a81`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:13:53 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:13:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456f5aa77ee2a66f6d99e2198c6548fa51f6fa27b9dabeaf32b372ccc1fd4b8`  
		Last Modified: Fri, 20 Nov 2026 06:14:17 GMT  
		Size: 215.3 MB (215294166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b663c808a4dac603ba2f991a80e6a6f662e8cdc8d791a4b1406784d2f985643`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23209b320830a9f67050253dc9fae7f8e83f74e5895cc311d9ffd741a3ca78c7`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f50f5b3689e6665b4ba8398562d9a1a30747c78d6ae4985668095ca19ebd61`  
		Last Modified: Fri, 20 Nov 2026 06:14:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:ab8b18c91e4c38c9c53a0cebed1c5f394b713a0c0e11badf5710d32d89bb7ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afab9414808541b95a392920152838f4343b5194fd66a66e346fb1b4de40842`

```dockerfile
```

-	Layers:
	-	`sha256:d5a157daecb8e597c1b0662497a5e1b5159cbcf81b26a27539c30d1d5b76d830`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 3.1 MB (3114169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15d0c2d90e405fd0c022b9b2fefe1ccf21ca172cbc9f7b70cad38a353ddc654b`  
		Last Modified: Fri, 20 Nov 2026 06:14:13 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
