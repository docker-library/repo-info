## `amazoncorretto:21-al2-full`

```console
$ docker pull amazoncorretto@sha256:9c3e09f59a5c2319a161cef94c7295ce28d6a5a98ed1773088a73778807676e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:001b9ecf1d4fe1697b7e0d75b61bf3679f5f57a3bbcd2ca0a7cd48f54bf8a502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228714810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2320d88664c21f9b986eb3145e1a978cb5f2686b0593cce7e2e3edc9cdc15bd1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:08 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:08 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:12:08 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a25ebd321ef57d87fbd3f54185d23439f547b29a5de8850ba5489f40995158`  
		Last Modified: Wed, 08 Jul 2026 21:12:30 GMT  
		Size: 165.8 MB (165756430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9e9f42244758fb0c596b525d9d6700a41682ec331bc66a070082e04e72525d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfaa7688598ae26df71bf0475413f4db122993c5b60d0a1e5ee7b9bc01a18d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ab34bba62cd1f55bbf1d73e2602f9752aa4d6c56c852f0c3d708c6fb7a81d12d`  
		Last Modified: Wed, 08 Jul 2026 21:12:27 GMT  
		Size: 5.5 MB (5536520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:283d5b6a9a77d59fe69fdb408b3061c418eb420d4884e0bb061beffe86e51d44`  
		Last Modified: Wed, 08 Jul 2026 21:12:27 GMT  
		Size: 11.2 KB (11213 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6b8fda614618ed7aa8e57a304f1ef69fc6315e5f2221736c6166e95914f91b48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228641530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5165b7f7b5efdacc1d3646077ed417a4711ff275d2102fb860985dab995745`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:02 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:02 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:12:02 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d544b319d5c3c4ae7aeb2aa58d342f32516b5cc437fe87264087e0f2c59bc767`  
		Last Modified: Wed, 08 Jul 2026 21:12:26 GMT  
		Size: 163.9 MB (163853651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f7c5a74b2a25b39f168b1aaf567ec44800caf87e2854a032e0c26a46af6a67ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69679e37bfecf5cf2978d8261eb7ebd81cbf726af594b8c26eafa56fb053ba6a`

```dockerfile
```

-	Layers:
	-	`sha256:3dc4022184647ce291727d41a7dc3b25b46167cbb4a707d3c35fe7707111f5ee`  
		Last Modified: Wed, 08 Jul 2026 21:12:22 GMT  
		Size: 5.5 MB (5535209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9ee740d0d849eff64636a0d4cb967d5cbc842cc25081ea709009664ce4c94e`  
		Last Modified: Wed, 08 Jul 2026 21:12:21 GMT  
		Size: 11.4 KB (11365 bytes)  
		MIME: application/vnd.in-toto+json
