## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:e883e2c701de8db803553c2cce7c9c8e4909745cccf55c3d61ea108c4230aa14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:d0130e690971592f45ac8a241479d43638f2e3c007602e963970cb427aa96a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275542526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d606001033d659a91c57af061b9d3ee98f1a3a1e9679f44a2bb2fe6f652c300`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:15:15 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:15:15 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:15:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 06 Oct 2026 02:15:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 06 Oct 2026 02:15:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:15:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:15:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 06 Oct 2026 02:15:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 06 Oct 2026 02:15:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 06 Oct 2026 02:15:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:15:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 06 Oct 2026 02:15:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 06 Oct 2026 02:15:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 06 Oct 2026 02:15:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9d174a3ad6d259d805678cb0eae6504d38d513dd184fcc52f699fb8ad9baa0`  
		Last Modified: Tue, 06 Oct 2026 02:15:40 GMT  
		Size: 235.6 MB (235639175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2993e82ebc9e65b9f066dbe6afa63dfbabd8ea3d72702c9926315e21ae95a76b`  
		Last Modified: Tue, 06 Oct 2026 02:15:35 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa7f6f791866294ef4b1261ca219b03fffbec91657e98e9decd3cf5d086c5fe`  
		Last Modified: Tue, 06 Oct 2026 02:15:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab509039ff0d97ad057d463e25df2597d6e4aa421ba4437f47abb9b40be49176`  
		Last Modified: Tue, 06 Oct 2026 02:15:35 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:fc5c69a48c25492f13afe9d2bce66529344ddf6e1d891ccca4d53bf02cdfbcca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627d1114e8a5d27c0cad6ab627a0bb927b46df45dc87a76ec674ee2003505d02`

```dockerfile
```

-	Layers:
	-	`sha256:f9ea48e7021be995134c89de272fb54297eb7b26246901e484cd636998dc0d11`  
		Last Modified: Tue, 06 Oct 2026 02:15:35 GMT  
		Size: 3.1 MB (3124887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc9a13e4ce422940abe86981a477bcf7d00687d0c7066e6c0c5ee7a78292b0c5`  
		Last Modified: Tue, 06 Oct 2026 02:15:35 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:62d394329747cf3de9e52eb291fb8554cdb9d3918cfae033bb1a65c8a5cf46ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273601197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1917ce67aad64a9ff2c392e256f016c9b1231ed8c14ddaa60eaf8b4cf1079de6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:21:10 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:21:10 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:21:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 06 Oct 2026 02:21:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 06 Oct 2026 02:21:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:21:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:21:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 06 Oct 2026 02:21:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 06 Oct 2026 02:21:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 06 Oct 2026 02:21:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:21:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 06 Oct 2026 02:21:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 06 Oct 2026 02:21:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 06 Oct 2026 02:21:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 06 Oct 2026 02:21:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ffa4e7a3d40e2e6a5875610ec3dfca7170ca49f76ec6fd1d5de18be8e66b4f`  
		Last Modified: Tue, 06 Oct 2026 02:21:37 GMT  
		Size: 233.3 MB (233340924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2b2353d0f6d174ce6f4fe8220e7ee56ca912be2b8529b0f02f350c929b3712`  
		Last Modified: Tue, 06 Oct 2026 02:21:31 GMT  
		Size: 10.1 MB (10058989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb53576d40a688c37a269b2ed56eca7204be2990016466325a3f2f79a3fcdef`  
		Last Modified: Tue, 06 Oct 2026 02:21:31 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ead977d8b1e4344a359447b6d17db1fa5f331c75f5a81d334457c1139799cb`  
		Last Modified: Tue, 06 Oct 2026 02:21:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:e57c07ffe281c73f8c14bc9adf6d4a502c029973ae119db90ca1d593505dc2f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724defa9a3668b6483a84c10ca3c26a6669d21f709402588592e900655439b8b`

```dockerfile
```

-	Layers:
	-	`sha256:1572dc51d358ba0cbc90626170dfa950f006af6ed044c3efb352d187800029b3`  
		Last Modified: Tue, 06 Oct 2026 02:21:32 GMT  
		Size: 3.1 MB (3124539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10507f98234b6d214afea5ed6c7fe0ab634b0782e8f4b8148a4856d498ccd88`  
		Last Modified: Tue, 06 Oct 2026 02:21:32 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
