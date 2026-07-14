## `maven:3-amazoncorretto-21-debian`

```console
$ docker pull maven@sha256:b34c956011542d7005af83ef53e08a9968d10e4bcd3c1f6387cc6641368c50fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-debian` - linux; amd64

```console
$ docker pull maven@sha256:13937df9d501e00bf69315def9ff2fb4b615149ce47b6c2911bb27ccdb0fee77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256025806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83240f7210f155bd05674297c04d96fe59142352268e05b97ea1fc0b65edf3a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:45:47 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:45:47 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 06:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:45:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:45:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:45:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:45:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:45:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:45:48 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:45:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:45:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:45:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ec44cd7b84e47463589da314b36029a769f3e37ea8a13b70522f74d86b2413`  
		Last Modified: Thu, 02 Jul 2026 06:46:11 GMT  
		Size: 216.9 MB (216879409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8287686d0d4730ce3a6a71553746acf13b5d70a2cf1e90d10752e82c835dce`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ba4cb01e9edf74e5c5d417f601163b3273e9aef11520335f267edb2830db17`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94af07d9da7f4ae1c6d4fbb9d0974f7e712379af6b516b67ffb98ff011ca75bd`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian` - unknown; unknown

```console
$ docker pull maven@sha256:d719d5b710b1a0734fc6e18c878d405c0d1ac6215e7620c9e7cbbb19ff879f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16bd63e175535303b8692237fd8bc25442cbb24048851f0669b8d5b1421d37b6`

```dockerfile
```

-	Layers:
	-	`sha256:5354d1c98cca68b08d45e3712b6afe8ef1c41b55d3b2f2f232ce249ecae7ac6d`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 3.1 MB (3104789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d616f0231b8a712be6700ef2f3f1f1222e6813dc1eec6bf4a8720132e00126eb`  
		Last Modified: Thu, 02 Jul 2026 06:46:06 GMT  
		Size: 17.5 KB (17524 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:aee5f8561c1c188c130008d02d6b87b26df5900f7f4fb117ef63742857544ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254434188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00284f2749e9146169c248e4c1d18f6e069b9b521e41f59541d7375e39786ddb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:32:27 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-21-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:27 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:32:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 14 Jul 2026 02:32:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 14 Jul 2026 02:32:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 14 Jul 2026 02:32:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 14 Jul 2026 02:32:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 14 Jul 2026 02:32:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 14 Jul 2026 02:32:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 14 Jul 2026 02:32:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 14 Jul 2026 02:32:27 GMT
ARG USER_HOME_DIR=/root
# Tue, 14 Jul 2026 02:32:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 14 Jul 2026 02:32:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552b38dcd6bc62c577ac7908fff8f3b46f8327688b687ac59132b663cc7819db`  
		Last Modified: Tue, 14 Jul 2026 02:32:52 GMT  
		Size: 214.9 MB (214929506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fae85c28a87df3dca516342e1368cbc45933887df1ea2af31d8c5cc6a8df11b`  
		Last Modified: Tue, 14 Jul 2026 02:32:48 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb7dceca6faa83a420762bb8007a7c6e4de20515eb2acd81e6b6fbc2cbf9f48`  
		Last Modified: Tue, 14 Jul 2026 02:32:48 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fcae2cf846805998ad6e496b8e8691c61798743db64984681721250f33348d`  
		Last Modified: Tue, 14 Jul 2026 02:32:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-debian` - unknown; unknown

```console
$ docker pull maven@sha256:fa9278b79a4d30efc4d9fac0fc1e60ff3ebef59ed4bf027c2c83d966668cccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3122174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80971edc06a9a34bff319365c11ac718ce409e8cfaa40ad757b7c1bdd1c0115`

```dockerfile
```

-	Layers:
	-	`sha256:8a21552d7fb09406a412dd3163d0886edb83c49743ad44c790488b0e0120bbdf`  
		Last Modified: Tue, 14 Jul 2026 02:32:48 GMT  
		Size: 3.1 MB (3104480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c50d6529b2ab4e6433731696c8e8102ff51d122c03dc0e97db3f9b103358a3ef`  
		Last Modified: Tue, 14 Jul 2026 02:32:47 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
