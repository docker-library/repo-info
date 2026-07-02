## `maven:3-amazoncorretto-17-debian-trixie`

```console
$ docker pull maven@sha256:002df71e17fe6b08a038d5a4a2f928916449feb0c2e04088f0f8dd729a25e82c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:f7e1a363ef65e405221f4a605a18c3e333370ef459710f2f3709cb959c1d308a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240916104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370a64bcbd7df262292296b763be5586d126bc6200353a5359bef324b56d46f3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:44:51 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:44:51 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:44:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:44:51 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:44:51 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:51 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:51 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:44:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:44:51 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:44:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:44:51 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:44:51 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:44:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:44:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:44:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998e640f4ab22b8fa7c7c2585e9eed8a4fdd121ab9e1eb087f8cc67e1d8a4368`  
		Last Modified: Thu, 02 Jul 2026 06:45:13 GMT  
		Size: 201.8 MB (201769707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4595838590c0bf7a9f34fd44931fbf6f4b4e49805bdbd93a163f0fae3ea3cd32`  
		Last Modified: Thu, 02 Jul 2026 06:45:08 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c655f112d30d92bfcee8453fc4a42f76560b75c024481b198d82a2ae828d71`  
		Last Modified: Thu, 02 Jul 2026 06:45:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ef0c6975db177c04f6e9b4e65516a36209b5a916b3bb100b6108b1ed095a6`  
		Last Modified: Thu, 02 Jul 2026 06:45:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:16cc70d635cc76effe6a671fcc8be72580c3acbbefa4462ed51ba9c3bc4c8bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32106bf02598195f24706dfc8085a52abf0ec9cf06491a20761a43c2cea4705d`

```dockerfile
```

-	Layers:
	-	`sha256:8d8716c5be2c659a8eb2ecedeed01ab7ed0c316e75411eec4f901090d6d605cb`  
		Last Modified: Thu, 02 Jul 2026 06:45:08 GMT  
		Size: 3.1 MB (3104886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56b08cbe2f955d29cc19e1b216c90820e3e7ba1d15f5bd64ab222106930d2099`  
		Last Modified: Thu, 02 Jul 2026 06:45:08 GMT  
		Size: 17.5 KB (17525 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a2f507c36691767eafd5c2882906c956502ab7b5ef988a7c5fd3967dd3206c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.8 MB (239815663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781f5ba093d4b01adb0730de4812b41b83475919982e0d8485b81caeae6fc9ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:38:03 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:38:03 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:38:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:38:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:38:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:38:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:38:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:38:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:38:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:38:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:38:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:38:03 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:38:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:38:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:38:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020bcba10b8acf98afabea460299f9be81d366312ae66dff3f42703b571b18a3`  
		Last Modified: Thu, 02 Jul 2026 06:38:27 GMT  
		Size: 200.3 MB (200306130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcb5d1f4e1b5d443c3215cb12fb379a1e987726e47d4242b59116f9ad64ad0f`  
		Last Modified: Thu, 02 Jul 2026 06:38:23 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f32a7bd06f306f6f606c88700946ee073df36dec9d47b78f143f8a63b56b74`  
		Last Modified: Thu, 02 Jul 2026 06:38:23 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56ff43d5465c8f7c5482a4ec1dbdb28fe165239d774754a298fa8caccfb5dcf`  
		Last Modified: Thu, 02 Jul 2026 06:38:22 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:8779d74c59386fbb1a7e8ae62ae2657c88c7a92b410463093ad64fe9e7fcbe69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee22fa892adf492cc4d36062f60fb5219cfca4b0fece13ed0c2462616e0d2f6`

```dockerfile
```

-	Layers:
	-	`sha256:50d2801edfb8e091da6f18d425915d40d6744b616a08d198d96973426c86aa68`  
		Last Modified: Thu, 02 Jul 2026 06:38:23 GMT  
		Size: 3.1 MB (3104541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5804d6b01a32cad1319289cab1579653bf7dc7917a9951823c400886112789e`  
		Last Modified: Thu, 02 Jul 2026 06:38:23 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
