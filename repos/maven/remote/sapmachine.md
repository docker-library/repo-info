## `maven:sapmachine`

```console
$ docker pull maven@sha256:35155c06fbfb34beceff8fd0a61263dda413b85e56d1c8cd9c631b3c0468ba05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:sapmachine` - linux; amd64

```console
$ docker pull maven@sha256:e7adbb094268878b0edb65225b716630c516efa604db9d33322c1ab30bafff72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205788245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a35aec200ac96019f8421622e423f2128f0dfb7967194ad18b907c0a2442478`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:15 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:40 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08345ef72449adf59ec528f124fc5ea0a2c43b7d73954982f1093286b90a201`  
		Last Modified: Tue, 18 Aug 2026 19:28:33 GMT  
		Size: 141.3 MB (141252809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e07761f34547d2cadc20ca45027ec42f78f2a425b5854143eb6a426d2cca43`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 25.4 MB (25421644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67afb64b8eb6b413ad392acb8d2a2ea1361388d0b4874a1a988b67ba568b9954`  
		Last Modified: Tue, 18 Aug 2026 21:30:53 GMT  
		Size: 9.4 MB (9359981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295ad27f4408aeac801b3a77d79a569e131a31a35cfcf19e69390396732b1b41`  
		Last Modified: Tue, 18 Aug 2026 21:30:53 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c70f7c7040046eb48fe776992e8e331b7b1b44a8ba76abd29da720f06f0fa94`  
		Last Modified: Tue, 18 Aug 2026 21:30:52 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:5ee85ea4eaa871b82abb52db241627ecab72f314bf0546379c4106416f24921f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb77581ce6fa2ef56d651f63a9333f2d8ed33bdc8359cc7c3b9b966216951cd4`

```dockerfile
```

-	Layers:
	-	`sha256:ef167c2c21db829dd9cfa3ddf9b85c8e4279e4673dd65fd8fcca050f22b39686`  
		Last Modified: Tue, 18 Aug 2026 21:30:53 GMT  
		Size: 4.3 MB (4251064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f466272fcaee596bcc11ec9587a8ace2ce837e99ffb36a7d4939eab6ce3900d`  
		Last Modified: Tue, 18 Aug 2026 21:30:53 GMT  
		Size: 15.9 KB (15906 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:sapmachine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4271ea6ede9e03eb35aa67b7ea0b738ff525dc4ea12812a8b6ecd8ff858f6dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204043037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10a332106eea5ce334fd37ca7b4213393deecb8ac0617bdff65d01c45de6069`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:29 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:43 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:43 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd746ffe4a60a650a9cfd6d80786fe4a17016bbc3e081a8d77a39c65fa32a7a`  
		Last Modified: Tue, 18 Aug 2026 19:28:48 GMT  
		Size: 140.3 MB (140302149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4807875b490cf59d3f94d0152a5f99a2361fc6b01e1e255b06cc0728de875200`  
		Last Modified: Tue, 18 Aug 2026 21:30:56 GMT  
		Size: 25.5 MB (25492679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257ea4fd4a7184cc5dc6a1fcd42419e7120bbf946074107804c261b1a9e6ecbf`  
		Last Modified: Tue, 18 Aug 2026 21:30:55 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0184f4a68f0fd64e3b3acf1c959a6931a76c4b6ee12cdd0384aeec74eced94`  
		Last Modified: Tue, 18 Aug 2026 21:30:55 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3624fba8ae4e060b2b90665778e297c4fb5f125021268b8cd42030c85457ec7f`  
		Last Modified: Tue, 18 Aug 2026 21:30:55 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:3ba6f9b2175cd6bcb2ddb9cca1f9f0183d12712c98beb8a3325fc27a7afa94be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40267315043a38cef9968f5669ce0a1b49ae5bea29cce41b1a23cae71bf96dc9`

```dockerfile
```

-	Layers:
	-	`sha256:ba2e41c4d6e3ccdffa092154f3ce2e6d7ee00b6bba61d4a6f714627a83e509db`  
		Last Modified: Tue, 18 Aug 2026 21:30:55 GMT  
		Size: 4.3 MB (4257631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bafa14e7008a817e4cc9fa4adf967c3a8e1b8c753953414d028591e5b449ad`  
		Last Modified: Tue, 18 Aug 2026 21:30:55 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:88dcbaeb1d8bae681cf14f3ed57c3acbbc8b7c536c1a850aae4cae2a0854dd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214016881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7dcbb6475ba94f4622d600db3518414adad07218972ec9f9c51914a5270871`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:34:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 19 Aug 2026 22:34:32 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 03:26:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 03:26:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 03:26:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:26:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:26:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 03:26:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 03:26:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 03:26:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 03:26:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 03:26:38 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 03:26:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 03:26:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 03:26:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bb3f99753799124433f82103a049b3b7a9f21053e37e30709a00614feef386`  
		Last Modified: Wed, 19 Aug 2026 22:35:06 GMT  
		Size: 140.4 MB (140379015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d46aa36c34cab74b3295872b25910ac32859eb2c86910d18d0ebeb1ab93e2f8`  
		Last Modified: Thu, 20 Aug 2026 03:27:03 GMT  
		Size: 30.0 MB (29965691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0983430a99beb5f21871be48c33a4f5b9f1c4a81fbc11b2d8cd25551b638553`  
		Last Modified: Thu, 20 Aug 2026 03:27:03 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890a03b68a0a29916a8a491a8c87583e469de70024b94e7b21882516a715d6aa`  
		Last Modified: Thu, 20 Aug 2026 03:27:02 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4c9ad6f8af291b1c7f3510529b32c62b3591fe8593d8fade3af8b08243977e`  
		Last Modified: Thu, 20 Aug 2026 03:27:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:69f7b37ac4908b0975466b73748af1c61bb0fe84a874cbe444164abbe846d984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5382ace7854128bf1059ccec354fdb61da4fa786817a9ecb47bd30f8c941a3a`

```dockerfile
```

-	Layers:
	-	`sha256:58ea1444f6d178e0603c74fccf14aa1aaa4d2852ad46174bbcbc4bd24d65e09c`  
		Last Modified: Thu, 20 Aug 2026 03:27:03 GMT  
		Size: 4.3 MB (4252833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78bfc927dd44b98a721cca756e95c138a8fcccf1c0e26352144b0ea164c027f5`  
		Last Modified: Thu, 20 Aug 2026 03:27:02 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json
