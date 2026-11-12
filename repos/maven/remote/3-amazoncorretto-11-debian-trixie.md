## `maven:3-amazoncorretto-11-debian-trixie`

```console
$ docker pull maven@sha256:e595734736506d906a29b3ebd771dd845ff34219285a734aea33977d4bfbde11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:fa939916af9094f12fa08297fcfed8dd590e64abc967109c465d38e5fa5f80cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242730456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d64de0c21f8e846b5ea5d1ba0eafc7e2d194e8c3d086e1138ef544ad8fdb208`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 02:16:42 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 02:16:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5c2900602ce016dfc2e9c0e6c474fd2bf2d40cf51e23156b53638877dbb4ca`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 202.8 MB (202814303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f76090c5d1f1c99d9068dbe31c36aefa63d343298bd0961918cfbcab0a6834`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29749be6826270d9b40cef369e08d477710918921555f8059af809e9ebe5d526`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6770033f715b6f48f00d8fe752abc00160129a001df5ec2f31a3ecfbc8195542`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:1d0ea7e06e49fef1791a6a208e28f962fa71b99eb9dfdaf8470bb7f6338f43ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5e51de004eb860b9abdc176141cc969e0d0539c3f6604fd88bc366904c15d6`

```dockerfile
```

-	Layers:
	-	`sha256:25064016de47a1ada0d357f33f0b7a70e8455e6f4c95fd01e3ec3301308c1704`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 3.1 MB (3119758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd50657556728cd8a25893080bd9329f3ee697acabee11b8a44ea13bea3d7a7`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:15dd3912a88e4782ebce6806ccc3f6a1c13083b0b6a7b0a2b740ed7ec81f693c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240163233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426452bc5d9fb428815cc35e9759e3303cdaf614627daa5dd2381c4ebea990ee`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 02:16:27 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 02:16:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1dc2c0485a562c1a993e1210b70c6da9c1bea36a1766034d4f98f77b9b7543`  
		Last Modified: Thu, 12 Nov 2026 02:16:54 GMT  
		Size: 199.9 MB (199889178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e005aa49ae027285a3c55bf2febd18efe3ea8257dfb83ce12ff3ea1e096d5523`  
		Last Modified: Thu, 12 Nov 2026 02:16:47 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652da4bb95fdd727603f94c6e398e214d3846cc09d5c3bd93c8d3e08aeae4ec0`  
		Last Modified: Thu, 12 Nov 2026 02:16:46 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dddb8652b0dc122a048695706189e8d85738384ee8a154acc1fe3c48eb28df`  
		Last Modified: Thu, 12 Nov 2026 02:16:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:f39000eed817cdc76623a144ba258a7a29e2935a7d20af83a19762da9ae7694e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcee9ee494fed7ec4aecda999e79e0e52757acdf3918f0007431176593b0e348`

```dockerfile
```

-	Layers:
	-	`sha256:8b104eacc2e754db67e4704ab3a00137c9165ecfa0e8936ca87697ae957c61d1`  
		Last Modified: Thu, 12 Nov 2026 02:16:47 GMT  
		Size: 3.1 MB (3120050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4fade69731c02204f848954ab0bfb45531d1ab3caf611e9b7a8737787701859`  
		Last Modified: Thu, 12 Nov 2026 02:16:46 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
