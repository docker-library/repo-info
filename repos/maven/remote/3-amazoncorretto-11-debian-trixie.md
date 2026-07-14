## `maven:3-amazoncorretto-11-debian-trixie`

```console
$ docker pull maven@sha256:927562dd818dce185cc4b3662e26e9de7bf0b3880918ef51f30ba218cd3c874c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:052d1059f1721562cc69bac0f2100adacdc8e4ae348c8ae63d9fbdbb3454476d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241896591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2702d023311e7ef8a8af9bd9f89c9b1f749e62dd850887a0226cad46064349`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:44:31 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:44:31 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:44:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 02 Jul 2026 06:44:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:44:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:44:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:44:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:44:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:44:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:44:31 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:44:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:44:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:44:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46f8843db6d2f775d0e07f8fc5d47c1d41d27a4a2ecb65558e5d927b21a9ce4`  
		Last Modified: Thu, 02 Jul 2026 06:44:54 GMT  
		Size: 202.8 MB (202750194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8269f0c83787e036bcf62390b5536e2c11c4d34e336bef9096a8a74f2fbf40`  
		Last Modified: Thu, 02 Jul 2026 06:44:50 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6934f184013aea0e1b20ca321bddaccbd2f483350e183da59fb1962800313a8`  
		Last Modified: Thu, 02 Jul 2026 06:44:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e31afc84a1aa6cdfb41867aa7e4ea8b7c409cde8d57ba3b927eb743d88a21ed`  
		Last Modified: Thu, 02 Jul 2026 06:44:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:2cbe0d57e4e6c6a8a0d56b4033e09c12f49aa2b05063d47494b7c9e7c6a0ab14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3127559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3dfc0c6eb72297253b28f3eb6228f986feb4a4e108613974b30fc74d3dfb08`

```dockerfile
```

-	Layers:
	-	`sha256:dc1b251c58b8271714dc6555aa4fd49b5aa6b78bdf0a02a6b3509fbd15733dc8`  
		Last Modified: Thu, 02 Jul 2026 06:44:50 GMT  
		Size: 3.1 MB (3110035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eedc54b50f04a7fe5e526e91b5ff6dfddfe9ad3d6db29d90d62b2f97caff42eb`  
		Last Modified: Thu, 02 Jul 2026 06:44:49 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:24b9a73fe38eb5e00a3f6db8c324df64faad30c45d886acc05b8bc15a6db500f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239322805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b0422e6477d5ca05424fe946b524af954dda918b359e8504ab1d27acec8990`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:32:18 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:18 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:32:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 14 Jul 2026 02:32:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 14 Jul 2026 02:32:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 14 Jul 2026 02:32:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 14 Jul 2026 02:32:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 14 Jul 2026 02:32:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 14 Jul 2026 02:32:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 14 Jul 2026 02:32:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 14 Jul 2026 02:32:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 14 Jul 2026 02:32:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 14 Jul 2026 02:32:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff6db7974a0d9dfb28bbe3e49d57b0d852be26aa2feb78dbd5b071b69492c63`  
		Last Modified: Tue, 14 Jul 2026 02:32:43 GMT  
		Size: 199.8 MB (199818131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c49bff38c7edeeaf6d6a9b589f5a7059913ca25fe1d3c114e2819cec2f61841`  
		Last Modified: Tue, 14 Jul 2026 02:32:38 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb4742240cd370d44c74d30687c4548dd2b0b7b5508b4a6f53170feab427d08`  
		Last Modified: Tue, 14 Jul 2026 02:32:38 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94e03dbd851efb641485aecafde8ed497ece26d6df46795c4ac7de0e99651fe`  
		Last Modified: Tue, 14 Jul 2026 02:32:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:4a932e64339f73fccf07aa3cc2ad452788a92255bdd63648ebf699015d7219f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a6ab57b89194d3aec9f8588373fd1355009e1bee6225fe26a8ef8077f33e22`

```dockerfile
```

-	Layers:
	-	`sha256:b16fa983fc34afe41d28121c2513d504ee4869e4936473a7a628ebabd4bac264`  
		Last Modified: Tue, 14 Jul 2026 02:32:38 GMT  
		Size: 3.1 MB (3110363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f40115f4d6142cdde42f6bf0bf755fd60bea48599941706944f1c95929de297`  
		Last Modified: Tue, 14 Jul 2026 02:32:38 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
