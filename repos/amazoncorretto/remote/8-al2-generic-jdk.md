## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:316f0fc997d5c3bb275d17daa7f34f8b7c8299b856a7d45ee9d0287275e5431c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e4fede7e5e7383894e009d28785a1293f34ff1ad2d90614ac1690fbdf252a3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139087549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96688f5747c320cbdd368833b61003351c67cf3c5f7e7f2105fea204d4d8d712`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:10:50 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:10:50 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:10:50 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2326ebed8c3d986570fd246370db8dd8aa4217c1d9faa91d30b8a286c9de25`  
		Last Modified: Wed, 08 Jul 2026 21:11:06 GMT  
		Size: 76.1 MB (76129169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c95f1a8c8375782b5be4848bdad3446a9d5e8977df41a721220d10848983d453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5388982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70bf15f40d756a7db8387f89226811e97996143c02c87f117e14b426d5810ae0`

```dockerfile
```

-	Layers:
	-	`sha256:ef7fa9e4864eaf5b98e2f0ff90fc5328e07ee688b1724456a0c254b47267c857`  
		Last Modified: Wed, 08 Jul 2026 21:11:04 GMT  
		Size: 5.4 MB (5377455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a3cd958639cfc27add93de4cd3a43a48445c50308490eddae9ca01417a2d766`  
		Last Modified: Wed, 08 Jul 2026 21:11:03 GMT  
		Size: 11.5 KB (11527 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:de98ca85f3b63c927a85315f107dd9d6d2b1d7a68882a65233e3981236483118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124668244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8529b07256a8c5a9c052f3a32f2d08622f8d3788afc093f1a019c49e100ac66c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:10:17 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:10:17 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:10:17 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:10:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd7e1744aafb4f24b54bdf531e95b0d89759bf9de804c64ed1d43d3d6b3fea0`  
		Last Modified: Wed, 08 Jul 2026 21:10:33 GMT  
		Size: 59.9 MB (59880365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f5d727504ec1f863c3ad16ee1557b69915fc4bffefbb68b01757754e8a5f7701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cb07a668a9f8316ef06f8d67ee35d748e4b460c3fd731088ec0a3cc8e054ea`

```dockerfile
```

-	Layers:
	-	`sha256:1beeb9e9bb6cf4eb29aa5864dfd4d226585ed2396d2a327ce8d527a39013906a`  
		Last Modified: Wed, 08 Jul 2026 21:10:31 GMT  
		Size: 5.4 MB (5355954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4e853189fba468eccddaa83e9c6f373809cd46a86fc44ce3602904617ebfafb`  
		Last Modified: Wed, 08 Jul 2026 21:10:31 GMT  
		Size: 11.7 KB (11691 bytes)  
		MIME: application/vnd.in-toto+json
