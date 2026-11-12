## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:ef84ecf8e4430c8ab7c563c484d544ddf152210820337db1772610eecda3c144
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:871c85ab2e9dfadbcd9fe2e9ac18664e68c07c6b0fb78ac9ee2d0ccf98924533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275553110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ac918c6408d425297ecc67e5ccc7c50f608fbad313d3c0c0499c7dce17cfc9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 02:17:35 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:17:35 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 02:17:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 12 Nov 2026 02:17:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:17:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:17:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:17:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:17:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:17:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:17:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:17:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:17:35 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:17:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:17:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:17:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac623ed62c7c5607af372ddc0ac53e4a026ec5c1cf0c7ea4541d9da198f3f14b`  
		Last Modified: Thu, 12 Nov 2026 02:17:59 GMT  
		Size: 235.6 MB (235636957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3003f83b0c133edcb99c05b878e06683de08a06ac7b03fc7cb8054e5ca3e538`  
		Last Modified: Thu, 12 Nov 2026 02:17:54 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7198dfe7237c049d2ba4e57ef6ff8c55eba06edf94df4ed78644ece85ae39316`  
		Last Modified: Thu, 12 Nov 2026 02:17:54 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495ecb2167c8c1dfad1ebaf42af337d2344e1944feed2cd2972e01f48dfccdc3`  
		Last Modified: Thu, 12 Nov 2026 02:17:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:cdbd4b96ca6a868368db52cc73a93076ff958a6c133da76c258c639383252d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a312646b652266845b4addaafe68c5e66749c58e18a626b1295fd1585b16b44`

```dockerfile
```

-	Layers:
	-	`sha256:7120335bc81392b0b0c140d60860ffdb25a6c080c895ba84e7a7dc03587feb92`  
		Last Modified: Thu, 12 Nov 2026 02:17:54 GMT  
		Size: 3.1 MB (3123610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75ce191a7ea11846db3d3007afb1ec82850fe0ab688e872ebf8e35227760949c`  
		Last Modified: Thu, 12 Nov 2026 02:17:54 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f68ecae6033a599d423bdc76be159421e8a0868eda7c962fb70d6c4cb01ac136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273595472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc99f1d92a4401b22b4625e941f3249ebaf2b7af744e1ee9021d2b343a36082`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 02:17:36 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:17:37 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 02:17:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 12 Nov 2026 02:17:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:17:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:17:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:17:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:17:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:17:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:17:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:17:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:17:37 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:17:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:17:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:17:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baab20848b11d1b669088b9660a626c787ae63c4b582cc33b37515a6d450ce64`  
		Last Modified: Thu, 12 Nov 2026 02:18:03 GMT  
		Size: 233.3 MB (233321425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7d6e82412fe4c065ba1467ac8edf99620ec489ed0ff45c8c3caeb23e247163`  
		Last Modified: Thu, 12 Nov 2026 02:17:59 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a3610aeee9ccac02b0f3cb412c00f3543e74cf403ae35b01a5a2d2b312c5f5`  
		Last Modified: Thu, 12 Nov 2026 02:17:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed62d40453edeeafbdf16dec81ea7cd468cc26fe065393f6612e3094bbf9026`  
		Last Modified: Thu, 12 Nov 2026 02:17:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:17e0d31170b8c341d9501f1bdf2f296bc575c93233a77599648dc7630272076a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3140964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e2ea62de47fa54af997fe5eb819cbfdf3c150e6b5fe85779cb14c0a26c5a96`

```dockerfile
```

-	Layers:
	-	`sha256:c31ef0e51d8e1ff3b2823f810e4d70f9cc1daf9b7ecd22a301be926a61b12208`  
		Last Modified: Thu, 12 Nov 2026 02:17:58 GMT  
		Size: 3.1 MB (3123262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7f99cdede03fa45636bc10b18fae558c380d7b41fb8b3c32f8447faad9d9069`  
		Last Modified: Thu, 12 Nov 2026 02:17:58 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
