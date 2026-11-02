## `amazoncorretto:8-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:41a99a77562d4052c37dc846715d1499ed21656104f4169ad0c9d822a728c75b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:14644c70c524ca8572bd91ba5fdb1ebc61c04e581835668eb0dfccb4b15cb0a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123001675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6fb02d69f285320ad8f3176441cdcc4b2caba6db916ebb4010b3ddbf736cc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:09:31 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:09:31 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:09:31 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:09:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcacd763b2e0e57ff260f6df49a690ab9a0b9c3d6b7b677b8370f1679a9065e7`  
		Last Modified: Mon, 02 Nov 2026 20:09:46 GMT  
		Size: 60.1 MB (60062822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c658e0c664b3f021b54967998e1c8b62885ac6d53fab52dc35294f6ba0c7bcd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7ee5342e1a91cefba643c938e66d5e6b5d6a2a9c0cdb19c2dffbc08f64ec33`

```dockerfile
```

-	Layers:
	-	`sha256:f91ca473be213ef0c485e2eab58b85c5cfde6d289170483f98c5a3c93139730c`  
		Last Modified: Mon, 02 Nov 2026 20:09:44 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf3c33ce91c15a4a8a423002d19f5a0f6c18fad9f84661b52b3450dc33268d8d`  
		Last Modified: Mon, 02 Nov 2026 20:09:44 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ec03ad3a01fd2e03eefb19c886e0be1e88ee763975090a38fd4f1cc179e7209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124793290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038e8332041ca2e83029ecc568b7cd6234c6800dc8d2acaeb3a360200e6aa4b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:07:00 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:07:00 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:07:00 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f7eaac7eff1c712aa4f2ee0aec17c756770afa8eebd0ea3565ccf21845c6`  
		Last Modified: Mon, 02 Nov 2026 20:07:15 GMT  
		Size: 60.0 MB (59987332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:866b3d971ea523088f63810804a0de53100780cbb7b96b997ebd6db9c3fcaa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0412978a4b69af6f76eb5029a252009f1aa9cc5244883d6e6815cb63dfa09f1`

```dockerfile
```

-	Layers:
	-	`sha256:597473158c0e93b37e9a4ba24126192db111f0e1b30cb184aef8601b2d69e02b`  
		Last Modified: Mon, 02 Nov 2026 20:07:14 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21a505a07cb17f62a22c7b967b7f785545660f0dd03fd4474795b0fd9c00d8c2`  
		Last Modified: Mon, 02 Nov 2026 20:07:14 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
