## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:ddb1bdf043e2b30af8a930ddb8c0038708ae07ffd84c758776fb142609ebb3c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0f5f249f81aae65734577c18239151e265c43c892ae816cee1fe8a50e7633477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123040083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7018577742b1804697682623b117dd8d3420e59bc497bd9f10fb408a73fdf3e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:42:39 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:42:39 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 30 Oct 2026 19:42:39 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:42:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa1c519d40e624a916105f972b191a250b3b5c63b10b6b0b83d66471708d203`  
		Last Modified: Fri, 30 Oct 2026 19:42:53 GMT  
		Size: 60.1 MB (60066183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a482446bddb39905cebb95692c152e5af5c8edd3ad4db1960ec48245bb28da58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788979a3f14412b1d50d36eb94016bdb0a99c3aba26bec955528c07a77272e91`

```dockerfile
```

-	Layers:
	-	`sha256:2187077323e2937368591935fbefa862c3b3b73f97b9f414b3e846e213b6854e`  
		Last Modified: Fri, 30 Oct 2026 19:42:51 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f800d5490c5c5faf5ea12be02781642077ae3f0c8b9ca90ca726af457c067cd`  
		Last Modified: Fri, 30 Oct 2026 19:42:51 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:97ce9a91e222750748bbefbf57327a01459d0d04a8e75048a04b0799120ff117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124823002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95dedcbb9bd0af1fd184483e360a4fb071b22e2f446a54649601553daa89b554`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:02 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:02 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 30 Oct 2026 19:43:02 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67974c1eb28fea22b9692875417697b8028b41229552879669de2495338ff146`  
		Last Modified: Fri, 30 Oct 2026 19:43:18 GMT  
		Size: 60.0 MB (59987283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cd1063e68a4799852dd92dd7e002bdf3403b0c67f67f56fbd615049ec231fc21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd785999bc1fa868a03649373b1f8b44c24fa1a1a73b1c155f7a18171baf9b9`

```dockerfile
```

-	Layers:
	-	`sha256:57e6d4e716d8473236b7bf2b6700dedcbe08f96d0b3c3b87bc3d78a83c36fb89`  
		Last Modified: Fri, 30 Oct 2026 19:43:16 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4889d37895a7246930d2fb09097506f4d51e953adc0047a9f62cbe97cf44bf60`  
		Last Modified: Fri, 30 Oct 2026 19:43:16 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
