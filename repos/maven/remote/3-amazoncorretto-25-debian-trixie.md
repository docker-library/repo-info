## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:26b72bc91b91f41f0081c136c43bdcdd10a106ec9a45a69a4f3a523b123692f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:a0d2b19235f109b9a5054ea05286eb56f06495e2c803edf6ca0135b420b602c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278500990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086d9549d14ec937e812ef52fa9eea4709f1048c63758b75c10f4674ef765eda`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 20:12:18 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:12:18 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 20:12:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 01 Oct 2026 20:12:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:12:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:12:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:12:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:12:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:12:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:12:18 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:12:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:12:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:12:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902630f6fd740f1db7fe4e17d3fe8113d9e197844956278d0a58b77b21283e63`  
		Last Modified: Thu, 01 Oct 2026 20:12:46 GMT  
		Size: 238.6 MB (238610576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4da221c00fc8ebabb1864ff0750408db54faeca60d173b893eebfc409c5f79`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 10.1 MB (10058994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab58b258bf79507a8bab4c93ea4a2161950444997c47ced686ded8fafcfc4cb`  
		Last Modified: Thu, 01 Oct 2026 20:12:40 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc42c9e19aa8294e3ba1582f957a1c27365c6f33cf5fb0dd15de20103418dfb`  
		Last Modified: Thu, 01 Oct 2026 20:12:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:7c52a2f5c9fd7ecf9854d8d666dbc8ba96cb35e4b5f76345d4f1e28ddb315120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e21ae9f9d202b5a04250e0b7f63e4bb9f6db5d97fda513b469a6dc67a16e09`

```dockerfile
```

-	Layers:
	-	`sha256:35de4ed44ed321dd0804a0336a8bc65cdd28772a089979318373de44489bd92f`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 3.1 MB (3124887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d03643d2f8b6632811bd9606c4f5e4c8b110dc4479dfe818a98a440722513ea5`  
		Last Modified: Thu, 01 Oct 2026 20:12:40 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0c6352c0d6ad9904890364f901161ed04f8ee5b11744005c5b92e7b1cdf72bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276921053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699a6ddbeb0d1c99995815f3ac748b5fd30437742715bb2c2cf2a79b58372b80`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 20:11:55 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:11:55 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 20:11:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 01 Oct 2026 20:11:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:56 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92a47ea005164a53019c09177512e27c88709fc3e6fc8ab2ee8935dfdd80f56`  
		Last Modified: Thu, 01 Oct 2026 20:12:29 GMT  
		Size: 236.7 MB (236671396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ac4a50caddf9bb1d359df3529e5b36718a0eb3baae1cecc57b214618417cd3`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 10.1 MB (10058967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ee3af4839eaba8b5a5bccb00b9ce06d75ea82137f6b936c6ecd1a1b4b6dd57`  
		Last Modified: Thu, 01 Oct 2026 20:12:18 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de989a71743ba01893eba5232eb281ee03f7eef4f91afbb2d851a34bd41a20a`  
		Last Modified: Thu, 01 Oct 2026 20:12:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:dd4516f895a5fba258025ee9ffefa0350ef52135b5d448cae445a1b1cbddd40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ac401cc83150d4fd86a8bb6989e3253e868249d723c0d22904a8dfbe6ba3b6`

```dockerfile
```

-	Layers:
	-	`sha256:071c566e06b67e4ff0ba9d7fc3e942b5f1e3faa996101a2985260bd0da75feea`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 3.1 MB (3124539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b587689a91de7328ffb6e1e7510d1001576310f6d4a5919477a3ee11cb9b0166`  
		Last Modified: Thu, 01 Oct 2026 20:12:18 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
