## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:a20b1fa7b839bfb258885a3a0580f0fd5826712f8259f324c9a1c048bd8c80bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-21` - linux; amd64

```console
$ docker pull maven@sha256:35534b56d87af987cce754decedbed616bbf8369467f486539bbee0e14b11aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287704532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ac6598f397564e62b9a28114c2335993f27f9aae64cd1780a87f2c987d2cc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:03 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:33:01 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:33:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:33:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:33:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:33:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:33:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:33:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:33:01 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:33:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:33:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:33:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e289a838bb38cff8aedfadf8f72cc4c9862106325665648deeeb78a41181cdeb`  
		Last Modified: Fri, 02 Oct 2026 01:39:25 GMT  
		Size: 222.5 MB (222451412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81fdbb0b211fa71d5048fc1cee14c77c130781aca2c6bc50e8c96e014e710369`  
		Last Modified: Mon, 05 Oct 2026 21:33:15 GMT  
		Size: 25.4 MB (25428683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309d053e4907b7a04eab39c18f3e0e1601acb56a7161ae0cadb3f00aeb5ab944`  
		Last Modified: Mon, 05 Oct 2026 21:33:15 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f54c3460ba00efad73c44ea16cd995467e83e85c170bfa7973e31ac75f4505`  
		Last Modified: Mon, 05 Oct 2026 21:33:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64f62d0f56b9b83afbf2b0cca12190946795f2e323c3435aa4050dd526f3d86`  
		Last Modified: Mon, 05 Oct 2026 21:33:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:517f0248eed780e7e93451cbdd41680fa6de8c3417ad81bbd31b70daf74a8ef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9a8b3ca6265bf35047692bc37b730da4b6b091984031c3d9cbedf14bb3b1c9`

```dockerfile
```

-	Layers:
	-	`sha256:796638fe8b39ab6be9a597d5e9cd44c989291d36df75745db6554fb2f5dd3760`  
		Last Modified: Mon, 05 Oct 2026 21:33:15 GMT  
		Size: 4.3 MB (4311915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:183dfb1ec6047aca4d8c59208e4ec79f8269ad48c20f8b2199114106ca4035eb`  
		Last Modified: Mon, 05 Oct 2026 21:33:14 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bff03b9dccbdf444b07f83d6f09c00c7582d387b872935f9f591da2b8448dcf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285027968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b070563d77b1a7da7a7a460220ef0bc29dc77cd2f4fdb6e6c9f04b70e984a548`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:13 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:34:24 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:34:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:34:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:34:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:34:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:34:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:34:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:34:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:34:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:34:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:34:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82236e7657aba3762b6918037a0fe160523f1eefe8192fb54f57c9e81e9155e`  
		Last Modified: Fri, 02 Oct 2026 01:39:38 GMT  
		Size: 220.5 MB (220516742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4786bb922fe5d225e54c1ced2b94c9332d4fb308b149b90033693baf90546264`  
		Last Modified: Mon, 05 Oct 2026 21:34:37 GMT  
		Size: 25.5 MB (25511119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde330c1f68019621b02a27b7fb042da77779a531e31a48b46b0473ff293cdb`  
		Last Modified: Mon, 05 Oct 2026 21:34:37 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23e7a36e096a83d0eaf0124d644be54184291786c2fc31244ff5963e5287d82`  
		Last Modified: Mon, 05 Oct 2026 21:34:37 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852d3211368c80351144481f9696d8179e241a5dc7949823e26926ba21992937`  
		Last Modified: Mon, 05 Oct 2026 21:34:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:680848841fb17e4ec6999b320fee420e91436563e944ad6fb66821f5f3494e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4333241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4482bf81bedf598a7cfcf5549052eebe4242e34e7fe8893463bb6acfa6e0d7`

```dockerfile
```

-	Layers:
	-	`sha256:c880a5628953914eba81a7504313f2dbe9ae87a8e78340c3a683c97643084fde`  
		Last Modified: Mon, 05 Oct 2026 21:34:37 GMT  
		Size: 4.3 MB (4318437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:523a5ac1a8a0505b10d7982adc96c842a5494e6a63d529770ebd8171fa39bc12`  
		Last Modified: Mon, 05 Oct 2026 21:34:36 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:056931e4e1882d9fbb59de33e1cee8518766bd8360ac229a03d8595359a26e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297132178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec1e96219686f3a19d72083b41a1b882a929eae6d8c03880aa641779331e752`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:46:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:46:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:46:14 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:29:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:29:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:29:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:29:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:29:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:29:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:29:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:29:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:29:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c58cc0cba839a9ce8b57903ae1df0897d91cecab4c4bd39cdeef6178a208435`  
		Last Modified: Fri, 02 Oct 2026 05:47:07 GMT  
		Size: 222.7 MB (222714722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6571dc6fea1817a29d0b62bd97dab449a604e6a41dc788d2d5fa09e81394f5`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 30.0 MB (29980926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d2871d333ed9147e88d47163ac9623e0e1fed80e9922239067edd5c4ca9588`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770026c3d9187e118469280137723158cfce74163bf57769de84db6a0b3fb5a9`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f87699df7ba746b6ed71d76a126b51640e9697ba272ddedd36a182569c860f5`  
		Last Modified: Fri, 02 Oct 2026 12:30:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:484f00a057838f4e67b1df2c911b3b82c4d3cbffd720699485f9b773b6558293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4327065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ef5cbdac600317f2e4d2b514b7f110892dad22a527a9a4fcbd98448e9b3793`

```dockerfile
```

-	Layers:
	-	`sha256:4af906c47a03bdcc62867bfdfa0000d135f3a763cdb5fb611d53593adbb578ca`  
		Last Modified: Mon, 05 Oct 2026 23:30:13 GMT  
		Size: 4.3 MB (4312344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2d19740010f1c1bc92ad3767b387698d41625dbad1c94e7c032c3f0b3910699`  
		Last Modified: Mon, 05 Oct 2026 23:30:13 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
