## `amazoncorretto:21-al2-full`

```console
$ docker pull amazoncorretto@sha256:7d2094980135daeea076146f2c990b6eea17e04a4642a0705f15b7d2ff62d5c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c5ecbbfd933073e3ea27be9c35dc580de23e4e04f2f93d44e702973141106f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228597542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d693a2cc8e6ec476064f8309b5f0fa530a278d524a458f152bcc25b23d8a78c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:38 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:20:38 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:20:38 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b5e27e302206c33f5e4c7fb509afedf207547f2086f039c9f26de71cf8db38`  
		Last Modified: Thu, 20 Aug 2026 17:20:59 GMT  
		Size: 165.6 MB (165623526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ac472ea5ca63666594831c37d3930c9f4dd3d538269183ef1ad3554e1207822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9948fbd86a7dede580a240e8a55315b9eab0f7a1e8c2d861e481f6af2a84af1c`

```dockerfile
```

-	Layers:
	-	`sha256:62a7ec8383e8be00f3e6f3e6a8440e8667fefed7f41ee456ded363c8e2232d1c`  
		Last Modified: Thu, 20 Aug 2026 17:20:55 GMT  
		Size: 5.5 MB (5536232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a1e63f7cf1b63b90d6a2d87a1137f318d6c69ecd93f7e04f203779b623b3d4e`  
		Last Modified: Thu, 20 Aug 2026 17:20:55 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f3e40377234771b2da482fba71cbaded6acf9dda86f36c2310deca9dbc4c7473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228580516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd392fe7bc968635cc5db4e311aafab3b84dc8ac1973ca1caffa78dbdc76978f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:38 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:38 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:17:38 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978a01e24d4c9ee091bfc3705a286e8d828b3c40f9c8b6d31c61b5594018cf8f`  
		Last Modified: Thu, 20 Aug 2026 17:18:00 GMT  
		Size: 163.8 MB (163791400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5c7d12025268fe3b953fe402a240c84a86707e74143e0b622f8e2f90109eeebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057589b99cc5f79f51fc61e5a94d67b5c95de3ae97baa854cb1221eea59a3184`

```dockerfile
```

-	Layers:
	-	`sha256:dbae2e86c6c480b8fdbbd3a75b346ce048d900e681d2f0c2c8bd5bd34e3c7b4e`  
		Last Modified: Thu, 20 Aug 2026 17:17:57 GMT  
		Size: 5.5 MB (5534909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:715db5da3b8b3cc10005c37dabaa4ea62f19e1acf971aef1203f52adec1c09a7`  
		Last Modified: Thu, 20 Aug 2026 17:17:57 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
