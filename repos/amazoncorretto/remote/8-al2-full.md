## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:dfbb04d26f0f9dc9b5be069b8c54903b98c9e3be3cccc86fec98e68872923575
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-full` - linux; amd64

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

### `amazoncorretto:8-al2-full` - unknown; unknown

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

### `amazoncorretto:8-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1197f7cef1de62078c31c6f31786651570a3abb10d97c12d68416b7b3001f497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124705166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae605828a1d5484b7ef0ff666942a750ad6ce629ca3e40996ca3ed1daf0803e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:12 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:12 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 17 Sep 2026 22:45:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:906220459ee715a39a1a9b2a27b74f3b3bdef9902f8e436dde68a76bae6d044c`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 59.9 MB (59900065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:01db24dd8f77a9eeaca0134b2c30d9b420b4b486346ab6e204bf3f405c711412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca80bb6ce1e6fc473cb0d6a73c205f883583a58d7d41c61a5bb308fc6405206e`

```dockerfile
```

-	Layers:
	-	`sha256:aa056997da4c0e590f0e983f9e44917487edc5350fb56cf57101b9f73e5a2316`  
		Last Modified: Thu, 17 Sep 2026 22:45:25 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:722e33b10ddd56b1a93f59bc26996f9dd9cfd7f9bd41660572d5c09fd6f0aebd`  
		Last Modified: Thu, 17 Sep 2026 22:45:25 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
