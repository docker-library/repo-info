## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:5434b8e4be9e766a963be373a1d104de7affbf8a37639454b329c8acd8fb170c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:9317c0f6fd9874a39dc16380e84d62b900dd54f21bfd57deaf7e527c76308419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164381936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b94fa4d484800a2718f570e58fdf3bf2bb96dacbd727f901d7297cd1c3a72a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:16 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:12:16 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 18 Aug 2026 21:28:24 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:28:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:28:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:28:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:28:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:28:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:28:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:28:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:28:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:28:25 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:28:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:28:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:28:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27e94e76fff4b78747bfbd72ea73dee354f8a8f818401a3807fed3574eb38ef`  
		Last Modified: Thu, 23 Jul 2026 23:12:33 GMT  
		Size: 149.0 MB (148958991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c403c3eae12d7be641c616ce5090ed9c806036ed9147880125b454e116bca3`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 2.2 MB (2215580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe5ed24fab80b7cdf768515caf4b74ba93aa9409085494abfd19243a0ac9a1d`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b32665a42d707a1c37a3f35ac5dc74bd14ff50a80eaeb60ca140137a4fe22d1`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07366038c62360272b1c591ba08e1b5ba68ecb58c8d74086f6e193169ac4bdf9`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:c05612b9e74c601f031b9f762fab9460261ac00314d3958f33fd62f07461ceb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **743.0 KB (742950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c686c9e24368e403083d8a0cbd59c27caca959a399415ef6bd73ec56830b6db`

```dockerfile
```

-	Layers:
	-	`sha256:9d9324fa8191b16d668061a83a479d6ece72555a83d17d12512af88b0418fe15`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 728.4 KB (728424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822e2d565e4f1e5d7f3d269e8b3bd133d11420bec21637f995ca6ac316c8d60f`  
		Last Modified: Tue, 18 Aug 2026 21:28:32 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4fe74ee4aab681ca5b46f85277d58b7f09e23e60352b98493812114672d24d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163173431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987109655d0487a917e565a34c8764c2fbcc58fbcf19cf50820da31228999e43`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:59 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:13:59 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 18 Aug 2026 21:28:27 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 18 Aug 2026 21:28:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:28:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:28:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:28:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:28:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:28:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:28:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:28:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:28:27 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:28:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:28:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:28:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384d46bc345dbea4c44bfc14d27a3af5b9da7e0be8e75579442fad22ef885abf`  
		Last Modified: Thu, 23 Jul 2026 23:14:17 GMT  
		Size: 147.4 MB (147373675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8648572eab6ca1ac64882344a44ed044e928dfc8ba0bbc138d6e9d1957c2b3`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 2.3 MB (2255739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a7161a496079ec81c0bf3be28122f0cfa3e2ae26cf88103deea00f41d25a8e`  
		Last Modified: Tue, 18 Aug 2026 21:28:35 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91bf7eadbd0ec22d8093d2422422e78e3c8e4d92ae42af723baf8e7c03cdf66`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb2d40c5371f5edf8b8525203ef1c2abef586043e5f4f59b821b92c283a9035`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:72f972aee3dc5436c58ad687568f72af702a3707a2d51c195f2ced112fab3d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.8 KB (741837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0555d15cb05140cc480cb4cd0b9d8e66a0d5965a78dd930cb5ee546bf1e53c73`

```dockerfile
```

-	Layers:
	-	`sha256:851829579d7ca8a2c3c2f56f938ca777f27b6e533d2c7063588586b45d72ef03`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 727.2 KB (727181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b52c89a7967c5ba5ce62a273687bdd57962bbe1b09655b0d151837be4c6c419c`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 14.7 KB (14656 bytes)  
		MIME: application/vnd.in-toto+json
