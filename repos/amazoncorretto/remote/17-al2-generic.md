## `amazoncorretto:17-al2-generic`

```console
$ docker pull amazoncorretto@sha256:9b985d2bb016f075e7eb27750254e67f1937beafdda9963b46831e2dd3194716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic` - linux; amd64

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

### `amazoncorretto:17-al2-generic` - unknown; unknown

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

### `amazoncorretto:17-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a1a0391027b51d6b98fe38c642b6a472beabc72aef2b8cde2c6ff975bd92e2f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215968069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a539fa221422f6748acd49ca28b0f05f56062af5d67c40328dcd33076b6626`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:53 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:56:53 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:56:53 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89fc066dbfbed023f271ac883a4febf5ad6807f87733f38ef4f79c4cf1493a7f`  
		Last Modified: Tue, 04 Aug 2026 00:57:14 GMT  
		Size: 151.2 MB (151167474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:26029121c85d129edf0b73d726f3cbaaeac07462f48fccf226b860fb371d5426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a546574b2a0fe1e5b89d081497f8eac4a2a415d435382f8aaa82236cb36ed14e`

```dockerfile
```

-	Layers:
	-	`sha256:f6c7f38a01ef09be6401c63524b42664e73220322a21ee0b3a4cbbfe8710a821`  
		Last Modified: Tue, 04 Aug 2026 00:57:11 GMT  
		Size: 5.5 MB (5534986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eccc4d8c7cd7a2f0b90a81191c96da4b8d3e1d4ab121eaea72c32dfe5ce10945`  
		Last Modified: Tue, 04 Aug 2026 00:57:11 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
