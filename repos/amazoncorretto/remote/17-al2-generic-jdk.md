## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:2ec501f08ffa7abc1682e8a68d55cffb46d93e4072a1077b61afb4358448e02f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bbe4902b5b46c1d8a8811d50737ec79798c4cc820a569f27c19056f513cca392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215471990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53f96999ae61bf95176935a2f552a7add9ab1e56c038451609bb1b55aa97a01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:49 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:56:49 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:56:49 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057a3b41398427db221eadfac43885fb1ea838e910f923e6551bcad93670d330`  
		Last Modified: Tue, 04 Aug 2026 00:57:11 GMT  
		Size: 152.5 MB (152522156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6cc08e7e493139397bae9c62a8ab4e2b583636a8ae997cb42a488d2e0d4e4ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72372c62d668172075447fc70c3b1ca3c7bc87c31207a66d1c3f6908fa3a7a7`

```dockerfile
```

-	Layers:
	-	`sha256:41675e554bdd46ceda0b5d9662b78c898c2a3efb82e2814d421adf8f2b4985e4`  
		Last Modified: Tue, 04 Aug 2026 00:57:07 GMT  
		Size: 5.5 MB (5536309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf1b259ff480156e594e35345979089390a7831e589c21c5fd9b2c908d074e7`  
		Last Modified: Tue, 04 Aug 2026 00:57:07 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f5b564ca4c1e996fbd0f024755d9fcc5f94793315924000c970c52bdb08da2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215962003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8002d6111fe1bbcac6af500204a0d17b5e32a159e6935448b8b0c7b0c5303db3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:26 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:16:26 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:16:26 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92d64a7c404f1f3f7a9bc97a93a020b642803d76ab3e3cdf0e2196b7ddb06be`  
		Last Modified: Thu, 20 Aug 2026 17:16:47 GMT  
		Size: 151.2 MB (151172887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dca72a8736e42928dd36b21d3beaac603bebfa207a395f946bae2d62137d9a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faa31680c5655def43716e11810beae1f2ad8b19e091dcf82c3ca695e05f726`

```dockerfile
```

-	Layers:
	-	`sha256:1d78f68c1fbc0ecc935f354886554a17e1fef5dd2fbbc0ce4e060c3ffef7ff3e`  
		Last Modified: Thu, 20 Aug 2026 17:16:44 GMT  
		Size: 5.5 MB (5535010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89418aa7c6dbdb2a45d2c2e9a8b1e5e3a4c73233ab84c30d5c5ae812b1fe361`  
		Last Modified: Thu, 20 Aug 2026 17:16:43 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
