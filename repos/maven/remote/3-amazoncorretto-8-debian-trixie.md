## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:b68c392c8994d717a258364eec28d15ed263bdae590069a252e9d277b681666a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:8665b2cab95f304443671800eb2befa5b9f17d14b400376ce4473889bceea128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149533476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bac9b22ef353e1a2107e03658b000b6cf5210db04044497b7ee826e746e81e1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:18:29 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:18:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:18:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 28 Oct 2026 02:18:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 28 Oct 2026 02:18:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:18:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:18:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 28 Oct 2026 02:18:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Oct 2026 02:18:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 28 Oct 2026 02:18:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:18:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 28 Oct 2026 02:18:29 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Oct 2026 02:18:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Oct 2026 02:18:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Oct 2026 02:18:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18339680c18aebdd469741dffc8705caf07dca7b53a37f1d7d7c6afa223b2849`  
		Last Modified: Wed, 28 Oct 2026 02:18:46 GMT  
		Size: 109.6 MB (109618234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecae613bd5f1b38b1e2954439e187b972824c3dfc14509f7866c2847dc979aeb`  
		Last Modified: Wed, 28 Oct 2026 02:18:44 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334c3dc69f45f1bb50a911f31c2bba2101df34846ae062556524975dc3642783`  
		Last Modified: Wed, 28 Oct 2026 02:18:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400bd4db7a0adc1ee6d634421b60ea4feac09d35e19ce5f8e8cefd4147a2a863`  
		Last Modified: Wed, 28 Oct 2026 02:18:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:1ac5b1cad37c6b98efaf9ebba1ab1224dbc31dda97564436696fd94619d6fe0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832adb489b6f2763b336f369b6220cf6464ea4d7edc6e85cc04f4959d5588dfa`

```dockerfile
```

-	Layers:
	-	`sha256:a5aa93db3db048de44f86c49ad03446301ba111b37315dfaac9afa3b884c1ed6`  
		Last Modified: Wed, 28 Oct 2026 02:18:43 GMT  
		Size: 3.0 MB (2974406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f47477687a07cefa87bc84ac4c4d039165812bb38811e339a5f8e4bb5fc862`  
		Last Modified: Wed, 28 Oct 2026 02:18:43 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:03f953acfff78692374f6e34f64a5b108737bff760fb244489f2222265ddf1bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149692586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9655e0474f22a41f03c67023cf011f44f688ccf6c53f9ae6f858319a5b7ed696`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:26:00 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:26:01 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:26:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 28 Oct 2026 02:26:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 28 Oct 2026 02:26:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:26:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:26:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 28 Oct 2026 02:26:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Oct 2026 02:26:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 28 Oct 2026 02:26:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:26:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 28 Oct 2026 02:26:01 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Oct 2026 02:26:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Oct 2026 02:26:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Oct 2026 02:26:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d23bc8238088fa28a93b56ccd4fa66bd44e7f3723a095ac4a061109c91ceed`  
		Last Modified: Wed, 28 Oct 2026 02:26:18 GMT  
		Size: 109.4 MB (109419080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49879c83756b62667393fa07b1a31ba14177aba50e1d62d948c06a31fbe3cbb6`  
		Last Modified: Wed, 28 Oct 2026 02:26:16 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63806fb4534e5e02ffb62b51ce9dad3572e13c64ef1c88d6d33bfa2e73f1cc4`  
		Last Modified: Wed, 28 Oct 2026 02:26:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0feda87c43205985ba3682c747fb0f081cbaca097e88fdefecf3f9a38417ab0a`  
		Last Modified: Wed, 28 Oct 2026 02:26:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:310ace9edaf9ace315242133791a1ae8aa93b91b5765189c571bbd40c1d2bed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc89ca456d756706ccf74064962fe2e968189c9cff74c32e6ac8209d06a7ebb8`

```dockerfile
```

-	Layers:
	-	`sha256:cfc734d7ae3c8fafedc3ec94c4333fdc5a4de8381445a018a2a8ef1b4d67bb35`  
		Last Modified: Wed, 28 Oct 2026 02:26:15 GMT  
		Size: 3.0 MB (2974778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3c13ede35fcb14d6f2dd7c711418f5395a4a956fd66eb26f3a5483d97f5fef5`  
		Last Modified: Wed, 28 Oct 2026 02:26:15 GMT  
		Size: 17.7 KB (17709 bytes)  
		MIME: application/vnd.in-toto+json
