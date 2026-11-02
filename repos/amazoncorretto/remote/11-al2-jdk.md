## `amazoncorretto:11-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:2b9bb74cef6287b657d0ee20143893bf59cddc1a321a80280a494d8aee52278b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:accf122a5d124984d0a4e2bcb83e1390d61ce8990664bacf0fe58070ef9853d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211195845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eb25ca35e0aef8fb451a7067de78484dfff528d657bc5037784b0386235571`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:03 GMT
ARG version=11.0.33.0.10-1
# Mon, 02 Nov 2026 20:10:03 GMT
# ARGS: version=11.0.33.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:10:03 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9881d6366717cd78354fcfce6766773f49107202d5a4eb430b66f5e7331ed61`  
		Last Modified: Mon, 02 Nov 2026 20:10:23 GMT  
		Size: 148.3 MB (148256992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:517bbd4ef7b5e201ec85bb6692d1aa9cd7fed05953a6926c1663a46153676054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b168b090dc92cd35c0c7064ae16908b234dd5203e77cd36335ce7c3c8525c72d`

```dockerfile
```

-	Layers:
	-	`sha256:8138b7acbb5d5f69c5fb8b4e1df8dadaa8ff90f57081134a4706013a5eec6c8e`  
		Last Modified: Mon, 02 Nov 2026 20:10:19 GMT  
		Size: 5.5 MB (5542836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ef50129cd7a8b122d34852bcef9da05940622e9edc5a50473806bae84ea72a4`  
		Last Modified: Mon, 02 Nov 2026 20:10:19 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:128c52f7c33ce4c4637a7822d02e877af8b80a777a7b126e60d1b5cf2702ce38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210251255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587eef414b2062e331231279c529c5e0b8345d8fd5f87f6e71c8f819958d4fe6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:09:55 GMT
ARG version=11.0.33.0.10-1
# Mon, 02 Nov 2026 20:09:55 GMT
# ARGS: version=11.0.33.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:09:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62bab86366efcebcea2416a60f25670b2dc91dd34ad551ea3e731f32a161b0a`  
		Last Modified: Mon, 02 Nov 2026 20:10:16 GMT  
		Size: 145.4 MB (145445297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c46bfd28ce056114cc3efd84df0b8b585de355d8e3ec265478294c6941535400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28190a8a35ae9e41d0a1b13b2018d07ae76b5a833d81ef1bfac593ff3b1a711f`

```dockerfile
```

-	Layers:
	-	`sha256:5376c2ca58fd08b1b1d08705378949eb52525ee6270104e0938e006c664418b5`  
		Last Modified: Mon, 02 Nov 2026 20:10:13 GMT  
		Size: 5.5 MB (5542318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3f970f82a1ec4185b0d7f3a371f68d8b55a7165869c1dac9208faf5cd77bedf`  
		Last Modified: Mon, 02 Nov 2026 20:10:12 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
