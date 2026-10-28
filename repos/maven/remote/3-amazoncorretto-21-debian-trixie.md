## `maven:3-amazoncorretto-21-debian-trixie`

```console
$ docker pull maven@sha256:6ff58a6075ecdea6f45c822e347fb056ae71d4bf0bc100642a5aa82ec840375a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:2a7a9e97bff3d26020f00e85bc1e342c4688b505f56be8453a0d77f07c653374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (257026262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4351a9056126ee01a5c30e36f894d27b6abc770f542245fc07e62dba22b801bb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:18:44 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:18:44 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:18:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 27 Oct 2026 02:18:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:18:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:18:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:18:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:18:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:18:44 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:18:44 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:18:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:18:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:18:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c44335d459f6ea9a26cdb9dac6b30d2f64638d7cf5ebb6585a5f8886e94ebb`  
		Last Modified: Tue, 27 Oct 2026 02:19:09 GMT  
		Size: 217.1 MB (217122663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b728955fa967a83cf9cf077f95321c9ab40faf07a342880088baad1799321c3`  
		Last Modified: Tue, 27 Oct 2026 02:19:05 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27d022404c4c5e52952df858a6eee9cef06a9ac17d76c95cb4642ac584b93a7`  
		Last Modified: Tue, 27 Oct 2026 02:19:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7291fbe4d2614fc538e9c1a6d0063bc8ff2a6d0529b0b4347e8b04ba2bb71a2f`  
		Last Modified: Tue, 27 Oct 2026 02:19:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:930f018c13c819d3b2677a585a56e58ab228f3b1e0b3864d96a3b7e925609e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2787e7fa926166956bfd675f07378a690cb5d4ef252a88d034eb0f9dd104b3`

```dockerfile
```

-	Layers:
	-	`sha256:f3a225695edc86457000ba52eabba5e24ab4ef966a17c9da9b14138b5980afa2`  
		Last Modified: Tue, 27 Oct 2026 02:19:05 GMT  
		Size: 3.1 MB (3114512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010bc6ef4f42b8e331310704266944271caf4f92d164c2845c9f1994cd370bb4`  
		Last Modified: Tue, 27 Oct 2026 02:19:04 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:df166b282bcb3c548acce911b3109ae8a5f6bc30a991424467f6cec4a1519440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255540987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0eb12c1e19337245e9cc8f824859b763269eb21be820176142e2e1df3a6d4f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:25:34 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:25:35 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:25:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 28 Oct 2026 02:25:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 28 Oct 2026 02:25:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:25:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 28 Oct 2026 02:25:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 28 Oct 2026 02:25:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Oct 2026 02:25:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 28 Oct 2026 02:25:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:25:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 28 Oct 2026 02:25:35 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Oct 2026 02:25:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Oct 2026 02:25:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46616afda906ae523a65a087673534af8ddfa9faf20e9fc73277cfceb8a97766`  
		Last Modified: Wed, 28 Oct 2026 02:26:00 GMT  
		Size: 215.3 MB (215267490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978679f3077064e04fcc64efbe67c2bd457c925ca84a9fb675a3d3a69a00a889`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 10.1 MB (10058996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5043f2b0bbd5885ef22387295be859c536fea3a247f0cf723bbd19794f73d3`  
		Last Modified: Wed, 28 Oct 2026 02:25:55 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec015c15d409ba818ca32eaa6a46831ca7c14d958d038431c7183a948c12a7`  
		Last Modified: Wed, 28 Oct 2026 02:25:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:f7e2103c0a1b64f9833b451b78512d82396c7054e1210423a273777581bdbe6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3131869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d557277cebd4139e4da0fecaa2a142205febc1ee94812961523f22b9fce6c6`

```dockerfile
```

-	Layers:
	-	`sha256:7dcb8f42b1eeecd23028cba8867b37d532e611a1309ba5ec0a2755f8abac7c91`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 3.1 MB (3114167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7bc70d0166b282f53f78957c7ffa0ecbf05021530ca3a2c03264b6c21fe7e1e`  
		Last Modified: Wed, 28 Oct 2026 02:25:55 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
