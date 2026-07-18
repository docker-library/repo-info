## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:56320c9a2cf35899d932491586fc64164233b6cf9a3c1bf30049aa034f26a600
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:b3cfa8ccf24fceb4f2d8976263a70e730465d06d848a3baaf7fe0c28b49024f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363380606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab59551653643fffe889de1fae944f73b3ebe625306b26461d6569adb41fe0d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:15 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:15 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:07:15 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:15:16 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 18 Jul 2026 01:15:24 GMT
RUN yum install -y openssh-clients # buildkit
# Sat, 18 Jul 2026 01:15:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 18 Jul 2026 01:15:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:15:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:15:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 18 Jul 2026 01:15:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 18 Jul 2026 01:15:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 18 Jul 2026 01:15:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 18 Jul 2026 01:15:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 18 Jul 2026 01:15:24 GMT
ARG USER_HOME_DIR=/root
# Sat, 18 Jul 2026 01:15:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 18 Jul 2026 01:15:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 18 Jul 2026 01:15:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1e0af204446e56235fe966d4bf317114dd794f23856202bed80595c55efd6`  
		Last Modified: Sat, 18 Jul 2026 00:07:29 GMT  
		Size: 76.1 MB (76129158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2384667cce884995a154bf8d7557735508e3b96f964d291856784c920494c780`  
		Last Modified: Sat, 18 Jul 2026 01:15:50 GMT  
		Size: 184.8 MB (184848650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e616ede36bb10b3a926c244394c7dadca5e3aa1023a32d8e2f9f6652c5fc05`  
		Last Modified: Sat, 18 Jul 2026 01:15:47 GMT  
		Size: 30.1 MB (30084520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b994cafd49f0ae3b8b353dee0d6c9bd078b2e5d30658fc584547cea015ccf043`  
		Last Modified: Sat, 18 Jul 2026 01:15:46 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2c103e2ba5340d83bee785f0d2f9c001764cf287779263a19f87a4a9e0ae8e`  
		Last Modified: Sat, 18 Jul 2026 01:15:46 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bf3010641912795a6ffc9e99f8405671fdcf1a46d7f06f38a1ecb205736a9f`  
		Last Modified: Sat, 18 Jul 2026 01:15:47 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:e5ee211f5831e54781f80d743935f03a5f4bcc5f7f7a2a15c741ecc3e867c844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6789890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65effde66203e1a737bd24a08564588da0e061478050ebd5931ad3e937fbfbb8`

```dockerfile
```

-	Layers:
	-	`sha256:a0241af29ab98a462b666fe9fff0901f8c9dc578f4ae6ef416609850609e22b1`  
		Last Modified: Sat, 18 Jul 2026 01:15:46 GMT  
		Size: 6.8 MB (6773705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0649212de96bc5045e760b5b5f067bf60ba643a2f95d42e0ee1d166e5c8ac0`  
		Last Modified: Sat, 18 Jul 2026 01:15:45 GMT  
		Size: 16.2 KB (16185 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:547c8e83e1d0b28e568d275077852b6aa2c94a5fc0dd8f14ed9b3cfde94c7cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.5 MB (325453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93c324108ed8dfbffac98275a85aa1a88be0c8a9acd3af6ec972988854b76cd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:10 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:10 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:07:10 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:15:18 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 18 Jul 2026 01:15:25 GMT
RUN yum install -y openssh-clients # buildkit
# Sat, 18 Jul 2026 01:15:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 18 Jul 2026 01:15:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:15:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:15:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 18 Jul 2026 01:15:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 18 Jul 2026 01:15:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 18 Jul 2026 01:15:25 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 18 Jul 2026 01:15:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 18 Jul 2026 01:15:25 GMT
ARG USER_HOME_DIR=/root
# Sat, 18 Jul 2026 01:15:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 18 Jul 2026 01:15:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 18 Jul 2026 01:15:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3831725e3f63ffe1309d8dc3e06d933b6833f1dacaa2966243d94af9752b75`  
		Last Modified: Sat, 18 Jul 2026 00:07:25 GMT  
		Size: 59.9 MB (59881753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f85545baf0eafd601a7c78ab73477245dc4517367ce681e45ba16747efbfefd`  
		Last Modified: Sat, 18 Jul 2026 01:15:52 GMT  
		Size: 160.2 MB (160228876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbb3676565b17b7dcc8bfc9a1c0a92c6c6d87c9f7add7f6b8bce5fe72f0c681`  
		Last Modified: Sat, 18 Jul 2026 01:15:49 GMT  
		Size: 31.2 MB (31192055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca9d9e7d031eeb7bdd560d6aafbd48fa6a08f84dc3edcb8e48a8a5b4ab6a1dd`  
		Last Modified: Sat, 18 Jul 2026 01:15:48 GMT  
		Size: 9.4 MB (9359979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf42b7a9da9502bd5f503f8f465e2d20c8fb81fc0c87c0dfbf4ebe5c6f2a326`  
		Last Modified: Sat, 18 Jul 2026 01:15:48 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648100c73b1d3d9508e0ab73f1ac7049d80c994e3cdb93f57103befcae0ab0da`  
		Last Modified: Sat, 18 Jul 2026 01:15:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:a301f5a9fba4fa2e709eadf879ad640e2ea12085bde5301d2b1df99083edfe87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6767234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee353d1dc15fc3e07c8106a6ed3a0abef850e57088703edf41966b2ecec532e`

```dockerfile
```

-	Layers:
	-	`sha256:d5573b26777a97cd568ba2a7b753a9748ae04f38174c1b272fcfff3b373bd384`  
		Last Modified: Sat, 18 Jul 2026 01:15:48 GMT  
		Size: 6.8 MB (6750902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cd7ccf2884811e364f6b4141e2fff1fbc5d5e7c36bb8adf0cd387616ce47197`  
		Last Modified: Sat, 18 Jul 2026 01:15:48 GMT  
		Size: 16.3 KB (16332 bytes)  
		MIME: application/vnd.in-toto+json
