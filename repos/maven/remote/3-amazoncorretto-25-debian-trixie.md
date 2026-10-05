## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:b2b4e48058c09d9a3d286582656870c4940ed3cda5fdc41e006663bb10e3d199
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:c33960f82ca7d3fcaaf28e36d85043879bbe8bf9195bcba8d551f6022a2bc22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278501147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8b48c4e25e47154bdf94a348c6c42c65de4eda348f464087ee6807640ceacb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:32:29 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:32:29 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:32:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:32:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:32:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:32:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:32:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:32:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:32:29 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:32:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:32:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:32:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ac34fa3fb332588403f1aa69b707f08375de56a409681d7ed2d65d7af019f7`  
		Last Modified: Mon, 05 Oct 2026 21:32:55 GMT  
		Size: 238.6 MB (238610729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e58488289c28db538a61904d72ee3f8610a6f937ae27a41928acb44527b2248`  
		Last Modified: Mon, 05 Oct 2026 21:32:50 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd34b6074d499466e85ab1d63ab764837055e8b4858fba45dba0571ea57ff62`  
		Last Modified: Mon, 05 Oct 2026 21:32:49 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dde677e12ada351d96eb9502274a9e0eba3bb9ac6d096a649c0883dda3ea2b`  
		Last Modified: Mon, 05 Oct 2026 21:32:49 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:d0c4456da8161f34989f8b74c3e92e5f8e5aa4e3afbb8a8bb78cbbbd918abf20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf1f19d44421d337545de4cccbc5f077e4e3d1a077b0f5232b1e8fbc4ae20fc`

```dockerfile
```

-	Layers:
	-	`sha256:0c5481bdd338c5b203b885ac9bc79874e672d5ad90d8aebfaa07bfca8d2e3f86`  
		Last Modified: Mon, 05 Oct 2026 21:32:50 GMT  
		Size: 3.1 MB (3124887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8745a60f303845bcbdb27b3ce27d4a5157f5ac26ad6fd4dce0a8ca7098454d3`  
		Last Modified: Mon, 05 Oct 2026 21:32:49 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0094abfda9a6357ea0d09bee07c4037042774d4536a7a720139da8640892ed59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276921041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26c7fea992a817144bee7c1d7a93ade1a96077e4499dbb2c2e95bfab7d578a6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:33:48 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:33:48 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:33:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:33:48 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:33:48 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:48 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:48 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:33:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:33:48 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:33:48 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:33:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:33:48 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:33:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:33:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:33:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd07a8fb0a68749f493da35bd28023f8a77ab68580c68723d9383fc66ff5d76`  
		Last Modified: Mon, 05 Oct 2026 21:34:15 GMT  
		Size: 236.7 MB (236671355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3605732ded917b081f1b30fff884e0a7d41ebe6ec2fcc5170f51dc3e43bd38`  
		Last Modified: Mon, 05 Oct 2026 21:34:11 GMT  
		Size: 10.1 MB (10058990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8f13aed45e855b71d141a4ed67721568a3aeb16c08ae2bd8cf8af5399eba2d`  
		Last Modified: Mon, 05 Oct 2026 21:34:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284ca6eadc1b63defcfb6beaeca2ff13a7fd810c414743e07937ceb1d1f3ae34`  
		Last Modified: Mon, 05 Oct 2026 21:34:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:570ccbc17746301e12058469a67b1a2dea65d0e39bfb07f0ed71b372d8367a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa17c613805d4168890faffb33a9334a89c7d1a9c4b858df3f4d52aa225692de`

```dockerfile
```

-	Layers:
	-	`sha256:403c071b4328037cd5ff597b5f5860b2372018937a47547e1504cca92a0aee89`  
		Last Modified: Mon, 05 Oct 2026 21:34:10 GMT  
		Size: 3.1 MB (3124539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dbb3c7e7b2a472f25d30a8e66eaa1a4f6822deab908f8c7dbb9203f0f29c919`  
		Last Modified: Mon, 05 Oct 2026 21:34:10 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
