## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:186aea6c62bb000722103369c03c4cdaa10c80f586d1ff39a1e191471bb0264d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:5efbd1e9a667753c3e4b49c3b9a3bbd5d2aa232daf84a5d6883dedba0eea31cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149521840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f603929306794d889330d03d9e2b3ddba659614f2073ef43ba4572f2fcb375`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:19:30 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:19:30 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:19:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 27 Oct 2026 02:19:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:19:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:19:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:19:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:19:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:19:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:19:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:19:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:19:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:19:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:19:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:19:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef55f9ff4a9e886abb2a00219647e0ffdb7e358e3ec7aec700df8c24d39d66b`  
		Last Modified: Tue, 27 Oct 2026 02:19:46 GMT  
		Size: 109.6 MB (109618243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1007e7abf73111530222e981af3df3599fcd4597f49536d331764050a71d47`  
		Last Modified: Tue, 27 Oct 2026 02:19:44 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2a8c3e6a68488b41e97d2254713f1689c8a9c7b7b36cbf32bf23dcfe1167ae`  
		Last Modified: Tue, 27 Oct 2026 02:19:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a770221a534378b76194134ccf2b29a58be76dbe13787f5f905f48915b33960`  
		Last Modified: Tue, 27 Oct 2026 02:19:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:92dde22b82836f079bd16c938a763e6917f55ea5a5330dabb7f0b448f5473999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d94f0d1ee84665b1ea806f264201bc60b654bc9ab73c47b29686b811663ef0f`

```dockerfile
```

-	Layers:
	-	`sha256:c977412b2de28288d84d952be2ac50c2bb4e9547e7018acbabb14ec32a4b20f2`  
		Last Modified: Tue, 27 Oct 2026 02:19:43 GMT  
		Size: 3.0 MB (2974406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7099916edf69e7d1da2e36b839484f2bbf7e5042ebbc1c9899092ac61d0c7784`  
		Last Modified: Tue, 27 Oct 2026 02:19:43 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

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

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

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
