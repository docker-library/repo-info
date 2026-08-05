## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:a8825da6bd6814801251c91e23a023af5d8958f1cb990bb61d2c483951401110
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:8d4502657b05d4c2d39e1fa652bcbae33682041fd9b7b89aac45caa785446863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148725171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7e58b7a603e9036b5c884cd7e952fba81c63369783a7be3485e5a7ade4e915`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:27:42 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:27:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:27:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 05 Aug 2026 01:27:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 05 Aug 2026 01:27:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:27:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:27:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 05 Aug 2026 01:27:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Aug 2026 01:27:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 05 Aug 2026 01:27:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:27:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 05 Aug 2026 01:27:42 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Aug 2026 01:27:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Aug 2026 01:27:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Aug 2026 01:27:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132e31de16d8f3e15a1fc1ce249c9ebba292bc6ad1493bb3da15393ec110d40f`  
		Last Modified: Wed, 05 Aug 2026 01:27:58 GMT  
		Size: 109.6 MB (109583434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9981c3fe7032271b31fd7adb475191b2d2071ecc36c8ac6051585697fb2b647`  
		Last Modified: Wed, 05 Aug 2026 01:27:55 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba450f0b722a3ba5381206136ddd24b21dd2a195b61fbe9dd23637e7dd7b8c7`  
		Last Modified: Wed, 05 Aug 2026 01:27:55 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666feb805c42a0353124c3df9ede496c1961a2b34c1cd749a6658da167b5c367`  
		Last Modified: Wed, 05 Aug 2026 01:27:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:28655f742b4cacdb783252ac279ecd66eea5d1d071f97182efe046a55e594621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1f8e04bd04e1ab81c0af1fb8d97c2d93db5cfc5753ae4b717b6c6e099b51b7`

```dockerfile
```

-	Layers:
	-	`sha256:9fbd3e905c653640b9d1fc5a14fe7a7d2c00260dd6cb45018f352a44e89d7893`  
		Last Modified: Wed, 05 Aug 2026 01:27:55 GMT  
		Size: 3.0 MB (2964723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a31c8b4ea646a57d8db55048c703d5c7cbdeb9bd3c41f3222de524f41c4db5`  
		Last Modified: Wed, 05 Aug 2026 01:27:55 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:57a3252dd1368a24615bc8fa173735a9962b4a0c557eb70e136d34bfaa0d47c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148902479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893a496c811a4a8b27ba04f29a7197522e29188cb5e77b619473366bbbf387bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:34:08 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:34:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:34:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 05 Aug 2026 01:34:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 05 Aug 2026 01:34:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:34:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:34:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 05 Aug 2026 01:34:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Aug 2026 01:34:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 05 Aug 2026 01:34:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:34:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 05 Aug 2026 01:34:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Aug 2026 01:34:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Aug 2026 01:34:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Aug 2026 01:34:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22860b510e8dd8f56eaaea7539ccda77611eac969a0902cc60e11f3097154ac`  
		Last Modified: Wed, 05 Aug 2026 01:34:26 GMT  
		Size: 109.4 MB (109397909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21463a89a9cc17e65a33d5429059e090deae1b63ad9bab437e3e1acfddc792d`  
		Last Modified: Wed, 05 Aug 2026 01:34:23 GMT  
		Size: 9.4 MB (9359960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149497f46425810776aced4bb0137586411a2d683bde9577dbcbe4cbc95ef9bf`  
		Last Modified: Wed, 05 Aug 2026 01:34:23 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7451517f142e8ac2d33926bf531feb0930d94c4a5c41f0f2ce08e69e786474c4`  
		Last Modified: Wed, 05 Aug 2026 01:34:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:53c9e2b0665dcf7429a13f810ade593f63f17365ad553d0a18fa78dec17f95ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a1f3551a5bcc825da2bace8781c821c991f021d9055404daee18a9a7f1e931`

```dockerfile
```

-	Layers:
	-	`sha256:60003c30df29516c0edebb0d201b06037cb90caf753ce4e610a5b263fee1a48e`  
		Last Modified: Wed, 05 Aug 2026 01:34:23 GMT  
		Size: 3.0 MB (2965095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6044a26062a638fbb7350470faf5a35a2d739dc1c327e97f30856aaef2858fd`  
		Last Modified: Wed, 05 Aug 2026 01:34:22 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json
