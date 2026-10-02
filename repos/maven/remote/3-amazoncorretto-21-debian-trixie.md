## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:11694bf7688dd0397b3eed3de09bff24ac7785d9fe6a27118772bc77370351cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:a63ce7df58042671dcf6c9b15e0e9d2cb6a330fede2a99d594ed89e86d47bfec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259628153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29cb1e1e8d3fc0aa49834db6e9ff6e8011d6fc335ed7f9eb60e4b7ea4d09353`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 03:42:42 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:42:42 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 03:42:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 02 Oct 2026 03:42:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:42:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:42:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:42:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:42:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:42:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:42:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:42:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:42:43 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:42:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:42:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:42:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de0a0dd558457b19b6ca5962f419bedbc94744b611d864766bd0bbf05ca00e6`  
		Last Modified: Fri, 02 Oct 2026 03:43:05 GMT  
		Size: 219.7 MB (219737750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66154f17ecf702764fb87f07af147f24dd237d8c10123e135635ab3ddd9ababc`  
		Last Modified: Fri, 02 Oct 2026 03:43:01 GMT  
		Size: 10.1 MB (10058981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4094f6fd6db465bd5a994279494f153af668ab426d3b26a0824be3b9ae4e9dd3`  
		Last Modified: Fri, 02 Oct 2026 03:43:01 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647a1d368ec77f930c861f0f8819c6efeca5f6bc28b3eee3b620e21ed9ccefe6`  
		Last Modified: Fri, 02 Oct 2026 03:43:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:27822caac4b19ae15ea5ded9ce94b18f96ec0412cfd900f5d7f1a94dc11127aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ac4473da2c03e33a8a0ba494b0700fc307095a28bf107a74d4744eacf6f1da`

```dockerfile
```

-	Layers:
	-	`sha256:e0a9931a2800892978b09557ba7d406cb9364048f398903bf1708972e9b56396`  
		Last Modified: Fri, 02 Oct 2026 03:43:01 GMT  
		Size: 3.1 MB (3115789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1181a60734548cee3c8e5d10c0b78049bb9416a4b716bd5ad500ce3145f40677`  
		Last Modified: Fri, 02 Oct 2026 03:43:00 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ce546c166306de9e7ea7d35f726a3b4b1af53e3e199ae2eb69dd264b58dcab86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258486180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1868685199c4fa4b736cf1694c2f1f1fe867fee679c4f6ade2724c10cbc845f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 03:32:35 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:32:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 03:32:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 02 Oct 2026 03:32:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:32:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:32:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:32:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:32:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:32:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:32:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:32:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:32:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:32:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:32:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:32:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ac022dd11d2f4da2ccc0f6eafb0fa5527a98b3d36ffd2c8526235481b79569`  
		Last Modified: Fri, 02 Oct 2026 03:32:59 GMT  
		Size: 218.2 MB (218236488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f4922ea4cc79e2135356ed92d580405bbd874967d362734317bafc0d4752fb`  
		Last Modified: Fri, 02 Oct 2026 03:32:55 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f20df2e590b783d4f1f654e34e1c2134da14b2df4e528e9bb2a2f34c83656`  
		Last Modified: Fri, 02 Oct 2026 03:32:54 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5143986992dd0c12bafdefb8e82e73dc6f6184e5ca85c247d71ce228a0e797`  
		Last Modified: Fri, 02 Oct 2026 03:32:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:4d9e514f318227acbb922b6882d55e7e6140f75e41752d1a208e225635e87db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a731083d72c9f56bf7015aa7369280c2229262ee776c248d0f59c1c18171e6`

```dockerfile
```

-	Layers:
	-	`sha256:2db713c51239e4ae0e315f73a3dcaa5ca63e4ab166c9d0196c284934939acd7f`  
		Last Modified: Fri, 02 Oct 2026 03:32:55 GMT  
		Size: 3.1 MB (3115444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdbe8c50a22a92c7b18172ee8fd496c3d8d9f3f575ec25883445959477569db0`  
		Last Modified: Fri, 02 Oct 2026 03:32:55 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
