## `amazoncorretto:8-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:2146e241a04a0f1397b5ebfba4a5de0da1f4854cf68370e46346a4c0da048b60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:27fa284d203192a5df10281e2db0954ed2a119092f131ea75934c7adafb56076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123047507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6fd6fb787b48618b2d4a5e3e99f48892dceac702244b0cb47ae8a8dfcb9aaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:04 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:21:04 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 17 Sep 2026 22:21:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ae527aa0f520f8e739fa3ca65dfad058de38685b13039ee1d7c4349ced3b9e`  
		Last Modified: Thu, 17 Sep 2026 22:21:19 GMT  
		Size: 60.1 MB (60082911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d45c6d7c6a60fdccc62b5d3be55d38ddc2c99af4bf8c55f7bc86b23cb9ef9574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2af4fed9f942fbcf3642d67fe6367e4f56ff4b79282736400bbc7f9537ef7f`

```dockerfile
```

-	Layers:
	-	`sha256:8a2ba0a419255f550ecc178b86cfe824227ce9c7f4c59cfc06bf66a8b3f0d532`  
		Last Modified: Thu, 17 Sep 2026 22:21:17 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a366b962c8cc246710eff826ff9c38aa93ab1cab43198f58e0c09d81bd84a7`  
		Last Modified: Thu, 17 Sep 2026 22:21:17 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-jdk` - linux; arm64 variant v8

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

### `amazoncorretto:8-al2-jdk` - unknown; unknown

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
