## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:d2ff290d8025a4e6837de2cba5fcd24acc69bdcc43acb01742e0c41c21a441f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:230f05d36abf25c866080fe9982f4d5641c95cb7ecde9d5a679eacc465d533b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.1 MB (439119485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eae39561c9f491ba7d5b9800a706e0596a2ab8f780d629e00e00bbfe9f335bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:23 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:23 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:11:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 08 Jul 2026 22:13:47 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 08 Jul 2026 22:13:55 GMT
RUN yum install -y openssh-clients # buildkit
# Wed, 08 Jul 2026 22:13:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 08 Jul 2026 22:13:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:13:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:13:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 08 Jul 2026 22:13:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Jul 2026 22:13:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 08 Jul 2026 22:13:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 22:13:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 08 Jul 2026 22:13:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Jul 2026 22:13:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Jul 2026 22:13:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Jul 2026 22:13:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c08455b0c0f65841158f2ddb01a16d10fe0de7df1994b02ed25a295c6775c1`  
		Last Modified: Wed, 08 Jul 2026 21:11:44 GMT  
		Size: 152.7 MB (152668409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060aeb4041f10e2a4344b36b4ed00139ea2671bc6545f4833f72c1a80285f681`  
		Last Modified: Wed, 08 Jul 2026 22:14:24 GMT  
		Size: 184.1 MB (184058707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc537a7b2fbb3152660b0463b819e63a2a96b3d6fec202b5c7bd1fc58745c9d`  
		Last Modified: Wed, 08 Jul 2026 22:14:20 GMT  
		Size: 30.1 MB (30073006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237dd4a337a35bae9f772e41cbe8bc7121e93b450f9c11abdad62efa0d0da646`  
		Last Modified: Wed, 08 Jul 2026 22:14:20 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44438d1179ee6d6057fad5ab422b4ff0082f9780493bd21c950c3be543e3bbee`  
		Last Modified: Wed, 08 Jul 2026 22:14:19 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b685c93648887b399fdf79e6efe403373c1fb68bd1dd50caae34d66fe6e121`  
		Last Modified: Wed, 08 Jul 2026 22:14:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:a23fc63aacf5906604324653088ab4c57b888b5d8fb070bd8496aaeabfa809ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6949361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae0f2c8b19f020862f04e1e04adf805ff1b9bd2374ff2d5877af4a70754a6ab`

```dockerfile
```

-	Layers:
	-	`sha256:e991dec7a00cd95bab2c95eeb0d2c465028e38aaf58c948566dbf49cbd09a367`  
		Last Modified: Wed, 08 Jul 2026 22:14:19 GMT  
		Size: 6.9 MB (6933165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb999b95bec05e031aa545d91d425ecb562927481e09f579cf458340ac436bed`  
		Last Modified: Wed, 08 Jul 2026 22:14:19 GMT  
		Size: 16.2 KB (16196 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a9b9de0ac543297eb8b615040ef2251602872041cc2493defcfca8cc0291c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.1 MB (416050400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6be6b798b76f64b4375e6c243c014237504574c1064a9b3d42afa31c83cb7b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:10:50 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:10:50 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:10:50 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 08 Jul 2026 22:13:58 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 08 Jul 2026 22:14:05 GMT
RUN yum install -y openssh-clients # buildkit
# Wed, 08 Jul 2026 22:14:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 08 Jul 2026 22:14:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 08 Jul 2026 22:14:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Jul 2026 22:14:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 08 Jul 2026 22:14:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 22:14:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 08 Jul 2026 22:14:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Jul 2026 22:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Jul 2026 22:14:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Jul 2026 22:14:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1ea515ee6a6b9fdd3bee0293b6b8c5f7423c9c0e5bc071956bac6dbc328ac8`  
		Last Modified: Wed, 08 Jul 2026 21:11:11 GMT  
		Size: 151.3 MB (151270248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16107ec8e74764dfcdf17f499a0acc3e51b1ceeca2cb527911c1fde0dac913`  
		Last Modified: Wed, 08 Jul 2026 22:14:32 GMT  
		Size: 159.4 MB (159420093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f9a614ce2abb3164ca1e44618734259b1bddbdbf306c9b451dc90365b46d8c`  
		Last Modified: Wed, 08 Jul 2026 22:14:29 GMT  
		Size: 31.2 MB (31211199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaf964f9a93e77d2577eb6f69d797b350bde1a72d1bd60924bd4d94716ef280`  
		Last Modified: Wed, 08 Jul 2026 22:14:28 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c572a4decd86452816ab4efa618e5983a65884cc501a82ffe4e1d29a428770`  
		Last Modified: Wed, 08 Jul 2026 22:14:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a1f5c4a7accc5af6f723c2bee4e0e07df98f6aefad2bf39f0b68c0aa44548b`  
		Last Modified: Wed, 08 Jul 2026 22:14:29 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:a7cc071b66c24d16b35c2e3a2cc75ce1c43898dc773e879b4ad9f5ce444bc72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6946907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f608dce9a8356aea8a6b05a1de0fe831bdffe97b55350ad64f5fe584780bd69d`

```dockerfile
```

-	Layers:
	-	`sha256:c25862321ec8762608916893fb9ec048cc24ea0d6c03ae2a4b684790ce1ca5b3`  
		Last Modified: Wed, 08 Jul 2026 22:14:28 GMT  
		Size: 6.9 MB (6930564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946e625f19e54fccba04c78cdcf8759b51d2d6695a879fdc6c7d951ba66ab1e5`  
		Last Modified: Wed, 08 Jul 2026 22:14:27 GMT  
		Size: 16.3 KB (16343 bytes)  
		MIME: application/vnd.in-toto+json
