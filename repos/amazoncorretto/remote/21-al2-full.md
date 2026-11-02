## `amazoncorretto:21-al2-full`

```console
$ docker pull amazoncorretto@sha256:70348d424cfa433a7b60d6f46d9b43cce89bd8f29a9e91254d24105c1335567f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:54ad9800e525e8aa9bc475857ecfb0f9177d421c759b04871b806822260831f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228844612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bfd7d1a5ca539360da180ddef8f894dce9aefa62197c5624129d6e3dd91538`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:01 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:01 GMT
# ARGS: version=21.0.13.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:11:01 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a1c4d9f917cc28099ca69a4f3690ca84a77940ee596b65b6a42a0eda299ee2`  
		Last Modified: Mon, 02 Nov 2026 20:11:23 GMT  
		Size: 165.9 MB (165905759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3115ecb9fa49c44ef4988ce35605d01e2a5871b6ac452744aa58253a58bc10db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11bacfe8626567d4f3215e3df1eb960d0e99b477c54679053381ebe4c1a0e96d`

```dockerfile
```

-	Layers:
	-	`sha256:09271e5f14a7fa17888cc1960f50a9ac87eb2ab70ba9b3593be31fa882338ad1`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 5.5 MB (5536246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c6fe870e3ade7ca645fdd6e49df52fd470d97410ccfd6ddce0e38c89ec47c7`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:53d6a74572c472502b5b78e5f6dfede109b8fe873c6c451771503a61c9db53e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228970301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9c25d6c9ecf2c98609a4f82cd3069e0906e399349be45663891729e0112054`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:45 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:10:45 GMT
# ARGS: version=21.0.13.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:10:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77008e017043aff4b970f3ffcb8e22df279b5952456194153086e9236d5e549b`  
		Last Modified: Mon, 02 Nov 2026 20:11:08 GMT  
		Size: 164.2 MB (164164343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f34c6405062aa1151c3a9ab93e6d9da3544b5eac495c20fe220882cec3436ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc02d106e5aa4cbd70f5163dea3bd22b85435bfddef1ca3921997364365f054`

```dockerfile
```

-	Layers:
	-	`sha256:822f5c5a6bb5fe23bfc6a9c6e5afd49fb0de6591f133e354f1da72fe4aeb0d9d`  
		Last Modified: Mon, 02 Nov 2026 20:11:05 GMT  
		Size: 5.5 MB (5534923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d92229f54f9e3657e97b6f9abeca2eac7c0b20250b376f0d30add9ee680e6f`  
		Last Modified: Mon, 02 Nov 2026 20:11:04 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
