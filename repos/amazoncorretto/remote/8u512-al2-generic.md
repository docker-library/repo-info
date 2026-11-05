## `amazoncorretto:8u512-al2-generic`

```console
$ docker pull amazoncorretto@sha256:b6737a5c1fc893d0504fd0fe4950805f127bd1e1ef6436e6202263d96ae58b46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:412792b70d0450ad1804327b3c44e5458a6748686045fcaa2ff68859197ab188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123001435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04b25ceb1432547e88b285bdc06e2a19ca68fa8009144d3c31a44f45d726e71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:07 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:07 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 19:58:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cd4e1130e0b7cb6bc8c6271ca88e0f47d66cd4d81f3f05ab8d3022c51f11d4`  
		Last Modified: Thu, 05 Nov 2026 19:58:22 GMT  
		Size: 60.1 MB (60062582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3ef0b5e763f0f86466b4137f24f97e247b2343674fbd1365c07874f986e311c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d289d5952945d019c20c2e2317baa614f95ec55ee52afd75de16796264dd67`

```dockerfile
```

-	Layers:
	-	`sha256:cfa1c836010a0771e1553787ca2a2cdb054205f65308a46fd551a60925ffe8de`  
		Last Modified: Thu, 05 Nov 2026 19:58:20 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb3fe6b0086aff19ef7ec6b96036923a63a24934f2f804b8e842bd6fa05aade`  
		Last Modified: Thu, 05 Nov 2026 19:58:20 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-generic` - linux; arm64 variant v8

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

### `amazoncorretto:8u512-al2-generic` - unknown; unknown

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
