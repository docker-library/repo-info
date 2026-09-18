## `amazoncorretto:21-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:0fbcb88d06df335795746b22e01bcb7f4bcf827badefe0208dcb2e71c11115e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b67c5a5796976c2e7ecc2056343d5345e98308776fd9eb58a64584090721d673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228587210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27a5f31b99ae60544030e7c1fd17b723d91a53657ac8af642cc04eb2bbbf71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:27 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:22:27 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 17 Sep 2026 22:22:27 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5f16b8d037f3ae6dc47ba0edeeec84b0e080fd45c27de6dbcd37ae4df3cca5`  
		Last Modified: Thu, 17 Sep 2026 22:22:48 GMT  
		Size: 165.6 MB (165622614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7c0725922b9d1c61b958cd7269f8b630dd5fb5e139a626c3c118eb4418060f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6f1d340c2d9c21810cc73d9bda0ae0f82bbb5b2800575eb8cbc4181979ce62`

```dockerfile
```

-	Layers:
	-	`sha256:9bec92fe6c97fcc044279ff5a699061acb37767c5c4169faca75e9258e4be9cf`  
		Last Modified: Thu, 17 Sep 2026 22:22:44 GMT  
		Size: 5.5 MB (5536238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4934dbf313a68fef2690ddd6ab44b13dc1c36048d019e01bd0ef9cf5a387ef16`  
		Last Modified: Thu, 17 Sep 2026 22:22:44 GMT  
		Size: 10.9 KB (10903 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cf1691590e22417a21bf9136d3ee1319471f7c1c076536b82cd0eb18285f8054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228608294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad596a84a6dd0283ba4b54cafc938203e08f67e8c215b5f38d7872af2e611ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:40 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:46:40 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 17 Sep 2026 22:46:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91792da809fa6f314b243abb2c90c48402bc19b578b3d3bf0d25a94221b6b1ef`  
		Last Modified: Thu, 17 Sep 2026 22:47:03 GMT  
		Size: 163.8 MB (163803193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:07735700dfb2d8734b8e3a0b533c28e070022fc9355391e59a23fe7d3a4bc8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54db0110e490e00f5737deb91ecc7e2cb468f568e415149e8dcfcaa76b53d82`

```dockerfile
```

-	Layers:
	-	`sha256:7691b0f655e8916041e8a413f5efd75d4d5ca93528eafca8a5cdce988ac83c1a`  
		Last Modified: Thu, 17 Sep 2026 22:47:00 GMT  
		Size: 5.5 MB (5534915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb95f3545b56a565bce52b191746d307adcb03a23d4f58a47fdaa6612611464d`  
		Last Modified: Thu, 17 Sep 2026 22:46:59 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
