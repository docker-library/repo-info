## `maven:3-amazoncorretto-17-debian-trixie`

```console
$ docker pull maven@sha256:91898bf393cd72edfec664f07544f9827997a65cf854c926142f1d5252b0fda6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:f61a8c2d0cf3222244131245c91cc6843a0f28ef0675a77aaaf8fd1e3a0d5a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240816954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ffe5bcb78f92e4a872ab4bdee34a0e96f11b6a495b1b50b9448fc5829af400`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:19:23 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:19:23 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:19:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Sat, 19 Sep 2026 01:19:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 19 Sep 2026 01:19:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 19 Sep 2026 01:19:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 19 Sep 2026 01:19:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 19 Sep 2026 01:19:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 19 Sep 2026 01:19:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 19 Sep 2026 01:19:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:19:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 19 Sep 2026 01:19:23 GMT
ARG USER_HOME_DIR=/root
# Sat, 19 Sep 2026 01:19:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 19 Sep 2026 01:19:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e607bf1df38439aef1e9101085bef5c08c652c0a1be3abd0c053fcbad346c051`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 201.6 MB (201625562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75272a6d0affc744aa6bff0c387ab85590e808c0e1e041cb9dfcf38bf45a8e8`  
		Last Modified: Sat, 19 Sep 2026 01:19:42 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e419c899a37012734d787fb049a6c2a31af458ce613950f8822285eb396223a`  
		Last Modified: Sat, 19 Sep 2026 01:19:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49278fe3e509bc8822ba5c366a36c8ab0a31325bec19b0acb6011a156ba33f88`  
		Last Modified: Sat, 19 Sep 2026 01:19:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:b2db2f44a2ffd8a13088061a774cf239c94ab612187f3a1b5d2a89b492df6c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185e4220dd5fc730072e4a89e6bcf534a8d353fce971c0ab758a07e2599b2429`

```dockerfile
```

-	Layers:
	-	`sha256:190ce23a657b40d73e38d52d8ecc4b8d5a656fc97324e06b8a7668d842072ef5`  
		Last Modified: Sat, 19 Sep 2026 01:19:41 GMT  
		Size: 3.1 MB (3110834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b83f7919f49853acd8f9c87914e56f6b33ed3d27952202cc27e5dc25c900900`  
		Last Modified: Sat, 19 Sep 2026 01:19:41 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:31f34c3e15a47f389e7c9025b6df7deabceb5ba72bf534f4a1c31552741b1865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.8 MB (239788650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72da66c4304b19cb5657255fbf6e11361cd3eb974cf8e0544d9ea297270e746e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:27 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-17-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:26:27 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:26:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Sat, 19 Sep 2026 01:26:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 19 Sep 2026 01:26:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 19 Sep 2026 01:26:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 19 Sep 2026 01:26:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 19 Sep 2026 01:26:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 19 Sep 2026 01:26:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 19 Sep 2026 01:26:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:26:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 19 Sep 2026 01:26:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 19 Sep 2026 01:26:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 19 Sep 2026 01:26:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 19 Sep 2026 01:26:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a5f464886e7a9518df1a89bd99339bbc6a02c021930ba15ef6943624607c95`  
		Last Modified: Sat, 19 Sep 2026 01:26:52 GMT  
		Size: 200.2 MB (200237987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25cf09d9245dcddb040b5700dc069ec82364907cdda0fca7f1d98c2ea57acdeb`  
		Last Modified: Sat, 19 Sep 2026 01:26:47 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cce0f851394d5ea5d27225b4663ac445451ff9af23ed203278724e9fa6ed316`  
		Last Modified: Sat, 19 Sep 2026 01:26:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415b282ebb799762664e50476af146f79d1996bace0da3ae7033a41af4185398`  
		Last Modified: Sat, 19 Sep 2026 01:26:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:69139f942a46ce2e9a704a686202f9dd4925b11e4672546c224fb320cec5dc40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4eb281362afb1999411935725177eb379ec810479f855df2fc7882f41621fe`

```dockerfile
```

-	Layers:
	-	`sha256:3f1626155ef8fa23d6ef8f6a20b817cd933440e69c3d618501ad0c0e3dc9ca34`  
		Last Modified: Sat, 19 Sep 2026 01:26:47 GMT  
		Size: 3.1 MB (3110489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfdb1e3970b7d9074003acbfc99c08c8a97e415531f8029880b8a411874cd856`  
		Last Modified: Sat, 19 Sep 2026 01:26:47 GMT  
		Size: 17.7 KB (17693 bytes)  
		MIME: application/vnd.in-toto+json
