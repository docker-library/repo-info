## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:bf52978b6869d9c1a66b5043a20eea43cb2e75fa44db77d1146c8f8f31de6744
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:168ced393cd9117ddee0fbb8b6eec7842c638f0052d7d3cb01b902714cbc2996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.1 MB (362059837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d04c4dd224a7ac1d75929224a74b8f4c1420dc285e3e0b7cab162dee4a168b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:59 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:13:51 GMT
ARG version=1.8.0_492.b09-2
# Mon, 22 Jun 2026 18:13:51 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:13:51 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:13:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 02 Jul 2026 06:46:29 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:46:35 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:46:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:46:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:46:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:46:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:46:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:46:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:46:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:46:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:46:36 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:46:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:46:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:46:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b5a31d0a32c9342b5b53f098c4d8ac4fadeb6cbc6b34b2e4424fd39eb880bf9a`  
		Last Modified: Sat, 13 Jun 2026 04:09:34 GMT  
		Size: 62.9 MB (62942019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e956beb420765a8edc3b49b8ad5c25fffb7dcba66d9f9a976d8b2b565a8c6b15`  
		Last Modified: Mon, 22 Jun 2026 18:14:07 GMT  
		Size: 76.1 MB (76114761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351bf0c983e5bb17b79a0607ccee54c503b1156b1446a719362c01afbe9a80b3`  
		Last Modified: Thu, 02 Jul 2026 06:47:03 GMT  
		Size: 183.6 MB (183578300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15d3daa66a10cfa3af821e41254385771e0322e6a308b0bbec26d0d0ead53c6`  
		Last Modified: Thu, 02 Jul 2026 06:47:00 GMT  
		Size: 30.1 MB (30063771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb35b688d62645fe825a06acdf9739fa2bce3f4138452b63934b489d3d7e039`  
		Last Modified: Thu, 02 Jul 2026 06:46:59 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2ce197b6f4f67fc6aba38be88692118f88c8e836ac921227ac1f5b489435a5`  
		Last Modified: Thu, 02 Jul 2026 06:46:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83173f0605f3b029016ff9f038a1dece744cc2727bbde37a7e4aa6c3d3b8a0f4`  
		Last Modified: Thu, 02 Jul 2026 06:47:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:3772b26d7daf2e846ae5544a09f8bcb9d9536494e5238ed3e11b9b1a8d7a9b53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6789891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ce1223c7ff7ee611305e7d2ffc6a4133c186f9555e68643274ecb93cb46f31`

```dockerfile
```

-	Layers:
	-	`sha256:2058556a0b6b23e797d4070d6d2acb9cbc79ce3dded272a1d0e7960ffab87046`  
		Last Modified: Thu, 02 Jul 2026 06:46:59 GMT  
		Size: 6.8 MB (6773705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25603c66c424bad97c2541e1766eb8dfb43e3a75137d3859f790c1477f7cfa8a`  
		Last Modified: Thu, 02 Jul 2026 06:46:58 GMT  
		Size: 16.2 KB (16186 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e98800cedb11e817a627d114d02f83785987f3e284a9ba9c6ca11e3d54f10678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.3 MB (324318227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3c833bd0396395d888c178fae97a4f77052309ac0fbd9ced2118608d8edbb7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 18:00:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 18:00:28 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:13:38 GMT
ARG version=1.8.0_492.b09-2
# Mon, 22 Jun 2026 18:13:38 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:13:38 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:13:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 02 Jul 2026 06:40:42 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:40:49 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:40:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:40:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:40:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:40:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:40:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:40:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:40:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:40:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:40:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:40:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:40:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:40:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b30ecc040ec91b7e580ef7f93f591eaf80422b110a473c44b4d0dbcb2301395`  
		Last Modified: Wed, 17 Jun 2026 13:06:48 GMT  
		Size: 64.8 MB (64794736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da27930608ec7cbc158efd992ee6afced1f2607cc66089b3508a2a6e0925c2b`  
		Last Modified: Mon, 22 Jun 2026 18:13:53 GMT  
		Size: 59.9 MB (59870945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adef13c6d690eec0a2d64acc74320cc5a64fa507e0df85471a427468dcc3696c`  
		Last Modified: Thu, 02 Jul 2026 06:41:16 GMT  
		Size: 159.1 MB (159094933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e317834ef764495c7664e63b9841e713299dbea8cc9cd6dc28763e08d5392`  
		Last Modified: Thu, 02 Jul 2026 06:41:14 GMT  
		Size: 31.2 MB (31196625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2499e741b497715ff8aa06aea16426ef006941b8b82503a0b78c072c346d7db4`  
		Last Modified: Thu, 02 Jul 2026 06:41:13 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7982c1ade9a1255262e141c8a5de04467d2169c2970876a78b5c249ddbb15d9`  
		Last Modified: Thu, 02 Jul 2026 06:41:12 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0504e19cc13d984cfc3329a07698039181a86440b9d3b90c520721076ae53b4`  
		Last Modified: Thu, 02 Jul 2026 06:41:13 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:37cb0aa8e16dc9f9a2182d3c45a5dafd2a787ba37d6f3225aed59a86a50a6507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6767236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e7333c2c8ff35a065f505febbb3e693dc26c8d78d2d269d0bd661c20ffa86d`

```dockerfile
```

-	Layers:
	-	`sha256:6d46a39ead06e6cf5cc37da4fefe01a802ec0a253e850337f08ba495a5a6aff0`  
		Last Modified: Thu, 02 Jul 2026 06:41:12 GMT  
		Size: 6.8 MB (6750902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f8c9bd8dd1a566043af635dfb3744a840bf52505ec350dd55ea79ad898ddd0`  
		Last Modified: Thu, 02 Jul 2026 06:41:12 GMT  
		Size: 16.3 KB (16334 bytes)  
		MIME: application/vnd.in-toto+json
