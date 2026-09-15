## `amazoncorretto:11-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:1cf59aa425a002963ee9e6e197375a10974cb2c6aedf4cdd51ba331d8d122f97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f795c21d645938b0cc4ebd6e1fd84ef78e73303674fc462ed4d5a127d331ff6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211206924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85179981dd51a440db6d99c3612f8ec491d6b5689ea789d1e563f72661c8b44c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:03 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:03 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:11:03 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874b85d345ddbd0e322a76675e353cfeccd2cfaf616416fe1587e12658a627f5`  
		Last Modified: Tue, 15 Sep 2026 00:11:22 GMT  
		Size: 148.2 MB (148242328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:66e05abac5f5b6d710917a69e9ba5d15e2c71173ad3965d3a2e5c2a683137b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b92af01c1f7dd0554e152047796f4a42050457e14abb87ceb1a0ec2c4b28cc`

```dockerfile
```

-	Layers:
	-	`sha256:8e9231730c7fab4ba953e45f462bf71b7de85121afeb8e0f3ded1795f0efff41`  
		Last Modified: Tue, 15 Sep 2026 00:11:19 GMT  
		Size: 5.5 MB (5542832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97b474e070c7a21a44aedd5bdbcc2b722a7701ed48c2a253e5affeb56bfbc920`  
		Last Modified: Tue, 15 Sep 2026 00:11:18 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:da908499980dad6fd0ff3d571d81d6d783b5b6ab09673404079461e3c7bfefc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.1 MB (210147512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94fafb92bd3bd8a09bf971ff0087bfba99db87a89ae1ba6eabb22eabe6c07d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:44 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:10:44 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:10:44 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255202b3a6b3d6af6a08cd439b2b4a02abf8877091a74a40d44d8fec7cdf826b`  
		Last Modified: Tue, 15 Sep 2026 00:11:05 GMT  
		Size: 145.3 MB (145342411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bacb04a22f6d80eb0c6d9823d6122a332febbb60c9ceaf7c99d8f1864e27f00b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd4b2fcfec4ecf6a1daf47b782defbd1e27286bd50740bc60c078ccfeae871a`

```dockerfile
```

-	Layers:
	-	`sha256:ed992e493f324b7b6357f38535162d2d50abb0eb50043abd587cae51212ec37c`  
		Last Modified: Tue, 15 Sep 2026 00:11:02 GMT  
		Size: 5.5 MB (5542314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:996e1dcb18536064d232fa17c7757fc8ff9c745e63ffb8c75e7a633fa7336301`  
		Last Modified: Tue, 15 Sep 2026 00:11:01 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
