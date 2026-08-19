## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:232a82990bb512123b0200f88d52656927a68c5a24580819cef03c326b70a053
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-25` - linux; amd64

```console
$ docker pull maven@sha256:8de8e55850ab57b4eedd348d0cb5b6d70fdeb63f8f970cca1dcba6a2e2f81cc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289582695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cae4833bee0b2bd7515a0eed5d1fd9dd8528d44743dfa9669c92552aa26ba7`
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
# Tue, 18 Aug 2026 19:29:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:01 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:32 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e803a7d64da6114b69afc465ba6ab7908dab94527c8ed2eb6c4682e824445b2`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 225.0 MB (225047276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8deec86c0708e5fd8cc780b0055a6eb8def72f21d0ca6e19a92814bcd6a381a`  
		Last Modified: Tue, 18 Aug 2026 21:30:46 GMT  
		Size: 25.4 MB (25421631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b654c890abb2891d9db31871d7506a8b5d75eaabd0c8124d09d4bd20d7f7a7f4`  
		Last Modified: Tue, 18 Aug 2026 21:30:45 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab20f79766ed10c8b1ed19f9c76d19e370fce61981671042a04d97ace791bbd9`  
		Last Modified: Tue, 18 Aug 2026 21:30:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76027ac3e89afa2718f25d8a353fb6eccae9367032ed0dc590d8119242e96c3`  
		Last Modified: Tue, 18 Aug 2026 21:30:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:d7bb376c212575fc1a9c52ca0a0b980f97236842c5defba7ecbe0a2c19c972a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca3a27de5774fae747ea089edd822c91b0007b5c67af8edd9ad2389d8e8b46a`

```dockerfile
```

-	Layers:
	-	`sha256:7a7f8208ae4ceae6011ac6bc8c195510f1a44f444addfd2a5b7ea46e3d61a268`  
		Last Modified: Tue, 18 Aug 2026 21:30:45 GMT  
		Size: 4.3 MB (4296283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:858e34f677e1c9e135d6cea03ccc6df9d317b2290cdc3c5a859e7b64e51b237d`  
		Last Modified: Tue, 18 Aug 2026 21:30:45 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:498e4b90cddfe15a6a4e3314967e7c01e075e6cab4262036bc50f4ef3847f082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.6 MB (286561942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90e93bc779866b70881fc904c81eba828848a5aea3700986005a36429ba47cf`
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
# Tue, 18 Aug 2026 19:29:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:32 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:41 GMT
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
# Tue, 18 Aug 2026 21:30:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecc06af2e88375c356040fb2a17615aafadbcb9c426e8398a0a268889efbf5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:56 GMT  
		Size: 222.8 MB (222820662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5a0a640ee4fec102438611ada54f52cc7fefee8d1e837a59043d974da52dca`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 25.5 MB (25493069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a441212b099352a4da58ffc170d9622870e220d1ff5b5662c0713a33b68cf98`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f5e223e9fd199903d5f638cddf96c393b4774edb8f94ff7444e11fa4121e1`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07502760664c40de677d9d1939e067b87e204765bc52bfa83d3d0d9edf72fb17`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:d04e4745c016b4e38c5156ffeb84fcaf4c9855de9aa8ae5b18efbf85bcce24e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd913be66ac0165a3b62bc8c5f470ab9b811f5d193b6f1efa4713aed6ca34c3`

```dockerfile
```

-	Layers:
	-	`sha256:e2a5f6f96a11df6ca1a47cb785f8e6ed63f379ebded8eecad70b555bc05073f4`  
		Last Modified: Tue, 18 Aug 2026 21:30:54 GMT  
		Size: 4.3 MB (4302802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db8f075d7cc2cb943d56dfe11cf436fe2a75444d75bdf3b562a1bada5e69c42`  
		Last Modified: Tue, 18 Aug 2026 21:30:53 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:5214949d43b41161b7a04d3f2b4a6e771907d2d6de867ba76e28db4b0f341ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299574248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a949e6013ed02a788ab3c2e57c3473d3526981ea6cb1cf605f26d06c609e40d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:47:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:47:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:47:29 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 07:52:18 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:52:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 07:52:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:52:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:52:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 07:52:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 07:52:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 07:52:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 07:52:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 07:52:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 07:52:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 07:52:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 07:52:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a000af5e21e018fd8064c202eed2554f613644aa0022f561e232baa68cde10c`  
		Last Modified: Tue, 04 Aug 2026 02:48:12 GMT  
		Size: 225.9 MB (225938272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c951fbaf8185f60e5617df7fcb3a85ce014fbc78d577d83c9277f16e27e0254b`  
		Last Modified: Tue, 04 Aug 2026 07:52:49 GMT  
		Size: 30.0 MB (29964324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabc8e2101cc9afc23211881386428314001e84ac492447f60b399b9d5182c51`  
		Last Modified: Tue, 04 Aug 2026 07:52:49 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd20d4d3e1a08b9daf083f572579dc6f3ff9411aaa691f3fb18c10c9457b8e6f`  
		Last Modified: Tue, 04 Aug 2026 07:52:48 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713d1135c9c6f55f54be85a4feea16735dab090bfdd90644c901695b3d41cf16`  
		Last Modified: Tue, 04 Aug 2026 07:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:0d467097dd816ebdcb166dc146726d075b215821ed1b3c407d559c32d5bab829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6838c16072f991366e757512d1971adbd6c5de37ff481f9d29a07de6b225a719`

```dockerfile
```

-	Layers:
	-	`sha256:10875577cb3a899c5ad9c68df4f2f11266a12544884bf95697499dc0deb43e60`  
		Last Modified: Tue, 04 Aug 2026 07:52:49 GMT  
		Size: 4.3 MB (4296094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21c69490424c0970b0c5baba850e10af0db60b4ef208acb4b23728be19d94e47`  
		Last Modified: Tue, 04 Aug 2026 07:52:48 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
