## `amazoncorretto:17-al2-generic`

```console
$ docker pull amazoncorretto@sha256:6888183d63b2ffcaee7a634f89f0f5e127551f162968d7e12d8ffbf101cc5fd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cfd3f946732129f663630b32531fcc6766216a8783b55867ba95d853ee8e8deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215726276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316d6e8dc05076f8e42b719b8ad712a694c7dafc2fe1b05227e6074f131501fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:40 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:40 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:10:40 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5b786a8f5f15ab0ba1969997d94305e3d3c2784a8ef373c0ff1ebeac3908ce`  
		Last Modified: Mon, 02 Nov 2026 20:11:01 GMT  
		Size: 152.8 MB (152787423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:22340ab8d74cd83c74f6d25c679cf04f4a97d5cd5a2b1414c323f596812b1a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acdb325c3cdd2625b8ea8babe36672a46050e231c4d1760ad32c5ce1bb480073`

```dockerfile
```

-	Layers:
	-	`sha256:f0e5c0cf322544e5433f11eaafb4f89cf0ae9d85bd722c37d1ffa856c8218c30`  
		Last Modified: Mon, 02 Nov 2026 20:10:56 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c77980774deba3d57c04df60d9c7252d679563400c93da3e22e539484bd17d49`  
		Last Modified: Mon, 02 Nov 2026 20:10:56 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:06c1b2b36fe53f19ced785b414d72cc10e49ff5e8f33547af77447ea50c505e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216368933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9273e09a66d8b2ac2fc72c36d8c3c9e985816e9e586bfbea858eb340c62d43b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:00 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:00 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 02 Nov 2026 20:10:00 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85634e226e980a8f869b3848cde0b053c3f733d03aeb2715c6dbc3ea699b367c`  
		Last Modified: Mon, 02 Nov 2026 20:10:21 GMT  
		Size: 151.6 MB (151562975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:07f914da1d5d67f10877fa7be6dc330b4a88a39df587ce279aeae9e0c27ed5ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0953e038594ef54a42cd8843cfde50e097fcdf4dff72bd46790d57286ad1b66a`

```dockerfile
```

-	Layers:
	-	`sha256:9adc760b3083ca63d820b6b34f207ff1b19166db7c2b9d0a21caa437737648d5`  
		Last Modified: Mon, 02 Nov 2026 20:10:18 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aaa1329ad393e5ff1426327b6607744b7a26bd8177e4d009236a6f65af6a614`  
		Last Modified: Mon, 02 Nov 2026 20:10:18 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
