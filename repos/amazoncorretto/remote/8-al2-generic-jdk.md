## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:35cbec2910553ce8abe02b112b47750ad23b52dd0f1f66443a22a0b28b7e94ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:45fd1961f05ddf467cdeea25de48bc32b3b661bedb9ab242a62ef1b60c8777d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123047628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a6b73b8419d57343340b22d0282a694ea5500f0bbbffc8b3d2886a6b170fcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:13 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:10:13 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:10:13 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef62dc8f4a615d2c8f95f33cfc7c3c069aec43d2145e138db3507ba2763ec72`  
		Last Modified: Tue, 15 Sep 2026 00:10:28 GMT  
		Size: 60.1 MB (60083032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0c0213264982b36a99b713ce98ea13fa74ff37d68fdf184c3bf76adccbfb7c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf21440fa989137473bdafdaf4a1c95cc7d93c726e07647a7c88c45d2df30e1c`

```dockerfile
```

-	Layers:
	-	`sha256:1f4f97bc8d986dc45d7560bb18b3a02666ef80a77dbfb6eba178746819043150`  
		Last Modified: Tue, 15 Sep 2026 00:10:26 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368d7fdc30e90d46926a838814a952250a80cd5870546e9e0c3ab04ecd554870`  
		Last Modified: Tue, 15 Sep 2026 00:10:26 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:abeef94edf047f74140066b7c1b54beca3f562d4972d2574053d26982911e229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124705147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6326093ff4fd43a9ccb944a0f1e47732cb57521e9f3c2cd58759d9ffda62ea2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:09:48 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:09:48 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:09:48 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:09:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28817f1d2916dbd670cf01db8df8d8c2d941c25cc0eb7393ba4ebcaff48e2bae`  
		Last Modified: Tue, 15 Sep 2026 00:10:04 GMT  
		Size: 59.9 MB (59900046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:baf09e2153437e0467ed39ee2ecedeae8ae80d37f2f740450814c09814ab8bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be4e83acb40eaf00fad26898f2f0e5f5948eae662ef35296b14d5a0cf241d9c`

```dockerfile
```

-	Layers:
	-	`sha256:c582d7ca548b19546ee02fb56fd975b870b840b577e4d4f591d9521b9c0d7c49`  
		Last Modified: Tue, 15 Sep 2026 00:10:02 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f049314cf9efcb91f24998744ed977a5ccecb221dedd9f8ed55709e808cc8ef9`  
		Last Modified: Tue, 15 Sep 2026 00:10:01 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
