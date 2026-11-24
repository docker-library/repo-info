## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:a033acd691667d389395b5f1fcc9796fb32c01248dd7bceb1087ae50b878ab9d
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
$ docker pull maven@sha256:7328eb3c036efade58391dd5eebaed57097768c0842f43d45703de8fd925473e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285046554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8806e17c2d7baa718df2c2eea4a48474cde48e766479ba24d569f9e6ea376458`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:33:19 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 20:13:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:13:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:34 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:34 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c838a2023fdcf80dfd0e2ff79f02e6ecb71b87eb6c2240a39248ac3930f726`  
		Last Modified: Fri, 20 Nov 2026 03:33:41 GMT  
		Size: 220.5 MB (220468728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060ebef8bb33414ce18ac7d7ea422acdab12f531855ed7ea6bff27242839f013`  
		Last Modified: Mon, 23 Nov 2026 20:13:47 GMT  
		Size: 25.4 MB (25432231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecfcf2b2b41696484aac908b7e54b7e2660897942c1404d2ce059aaf0411474`  
		Last Modified: Mon, 23 Nov 2026 20:13:46 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0150295882adf7b394ddafdd7258464948d4de282521a0a6a8c63872411eaa4c`  
		Last Modified: Mon, 23 Nov 2026 20:13:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b361885bf53e7d146caee90a271f785634612788a8ea74434069f139ed6707`  
		Last Modified: Mon, 23 Nov 2026 20:13:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:448efbcff9a3eeb931af1fc2a59d68fd59e791554001c0a0a1d7321efdf1333b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060b264c299a687deeed07ef71c29bbdbaeed70c61dd222eec9f722059d24a60`

```dockerfile
```

-	Layers:
	-	`sha256:befc7798a4025ff7c47d034c5f9258f9e8df73770713f867462c90825f9844f6`  
		Last Modified: Mon, 23 Nov 2026 20:13:47 GMT  
		Size: 4.3 MB (4306257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312e88e012a6ce22fa7ca4f82c85f953debcf747ddf62ebb43429f7e79f82b5a`  
		Last Modified: Mon, 23 Nov 2026 20:13:46 GMT  
		Size: 14.7 KB (14666 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bc0c39a273554757a2c71a64653340b308ed02ca6cb09e6918a151bda59b545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283214810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d3caeb67d286aee96d218e5d2dc7da35b7138e7503520864a2e303616ac123`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:35:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:35:15 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:15:39 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6868bc61b17ca178fd68c758c5d22bce47681b84ff24a25dee714338823131`  
		Last Modified: Fri, 20 Nov 2026 03:35:39 GMT  
		Size: 218.7 MB (218675604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75699a0521e17d3bc205288210f10d4719a895cdf6649631844b917acdd2945a`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 25.5 MB (25513865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9c1c164469813464d82348b5328f8b588cd8d7d4ebe39448ebece09fac97b3`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1785d58b113d2a880dc81005d245827b312c938a5dfebeec61460a2e54be147`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e6da0ae5c8801fd9f70521cdd9118a8bb952b2a675e41b634edd69036b1e43`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:1060b8a9b99617105a95f15cbf8c3e0a69e6b592502f9cdfcf36d6a497324fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4333889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc23f8b1d2e2c34d9650480e37f3a46cc5ff0bfec5fd713f31e4664705363d84`

```dockerfile
```

-	Layers:
	-	`sha256:1b212ae8ae03837560b06e7696953a0e53a14b78757779849cd09ca9bf590bac`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 4.3 MB (4319085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adcc6adaa68c330929393418ae5da3bd77b2a581d8d988b59f30db8385cb5575`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:3f45b103d023c80306b9956bd155973ff74d2198f473c6b552d3141cee81e6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294115625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc92ab3c0984efbc5e10a53ec75356c026280513e07935790e2ad0bbe125aa2b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:25:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 04:25:43 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:27:00 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:31:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:31:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:31:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:31:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:31:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:31:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:31:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:31:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:31:53 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:31:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:31:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:31:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec72392af98405efeb7105112920e7ad0b8e99ec9d49d071d033aa5d9cd126ff`  
		Last Modified: Fri, 20 Nov 2026 04:26:31 GMT  
		Size: 220.4 MB (220377184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6087b172213ed15268808a3aa52149c925dff5e660351b637fe356bef3cbdbc5`  
		Last Modified: Fri, 20 Nov 2026 09:27:41 GMT  
		Size: 30.0 MB (29979922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd244708d5a71445a0d0233c38d59166b57f130eb70e477d0082e9756710fdbc`  
		Last Modified: Mon, 23 Nov 2026 20:32:14 GMT  
		Size: 9.4 MB (9351273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82502ddd1a006116a79d566505f35ab7c85b42042e63c58e76f70ada57176eeb`  
		Last Modified: Mon, 23 Nov 2026 20:32:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fc0f1d278b0d5c687e486759fa68eb3ec616caf804019892f52825818a37ae`  
		Last Modified: Mon, 23 Nov 2026 20:32:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:50901bc861c3839b4ac4be5659c4caa55a19e141bcf80a6d639617828f0824ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a2ef5cf092cf687968e3e2ad09f58d8a0df87fd10ee860e6ecb5907f8517e0`

```dockerfile
```

-	Layers:
	-	`sha256:fbc796d9e885a9ee8210457bf090b2d6442fdb8472c848ee2f5e7aeb95d32a5b`  
		Last Modified: Mon, 23 Nov 2026 20:32:14 GMT  
		Size: 4.3 MB (4306686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46e6ae99bdcd52fb32ac6d823560f29765b048daaec8788fed1b0bb535fabbd0`  
		Last Modified: Mon, 23 Nov 2026 20:32:13 GMT  
		Size: 14.7 KB (14717 bytes)  
		MIME: application/vnd.in-toto+json
