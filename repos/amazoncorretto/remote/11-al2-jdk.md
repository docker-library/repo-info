## `amazoncorretto:11-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:d28c4b9769511afe9a58af6cb71af5be52d0730e344f746632d6aa2ce80e0e4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2cdf561cd3f5ae2bdbecc02131260c0122f6d71f5179b5739fb8e8d65365e378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211198399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1292576144a82482c928e0e3a6b5400f75415e647f0f8be24228151f66959a2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:27 GMT
ARG version=11.0.32.12-1
# Fri, 23 Oct 2026 01:09:27 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:09:27 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dd5f3789ab8c7538a7fe15fa98e72a981b03e624cfaf3e414cdda6b2eb6da7`  
		Last Modified: Fri, 23 Oct 2026 01:09:45 GMT  
		Size: 148.2 MB (148224499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d7b0f04247056b0d8f02039b9b272bec3b1b69f616847024c1eaf8398c559771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf01577e050ac5835209073a9ec83f4e3e1b6bfaf1fd75f6519456d018a5036`

```dockerfile
```

-	Layers:
	-	`sha256:02d61200d96436ad9d761c34bc44b64f453e78b85e623a4d160b2bdacf466f4f`  
		Last Modified: Fri, 23 Oct 2026 01:09:42 GMT  
		Size: 5.5 MB (5542832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b79cec131e8851c6d5bb656b5166bc3d41ee4cdae55d0ae1f207739298d63f04`  
		Last Modified: Fri, 23 Oct 2026 01:09:42 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fe6c6b40075d0c66fe339b4f2d939a62f04bf7c53a0500676948c0e1da5c7de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210235473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975f1a05bd172fd5324768e1337e9ff564684e502cfe79f624f259d15415bded`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:24 GMT
ARG version=11.0.32.12-1
# Fri, 23 Oct 2026 01:09:24 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:09:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff2005fdd164aaf71109e3d8127f91253ba23a2388f353515129f0a5d705455`  
		Last Modified: Fri, 23 Oct 2026 01:09:44 GMT  
		Size: 145.4 MB (145399754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5759080de543acd03ecfdee199df01dd5b3d4cd90a42f15dfc427e04090f13ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28a02351a372abfa5ae0aabd3b6427ee79a0b315b376e81df2da9c94f291933`

```dockerfile
```

-	Layers:
	-	`sha256:b89be12b90d1332b5b87c81a51081e7e27049a222334a246a8098723da8a3fb2`  
		Last Modified: Fri, 23 Oct 2026 01:09:42 GMT  
		Size: 5.5 MB (5542314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbe1e8ff5c2ff65cde1896ea3663591c3e89a9bacd42f4d3879d0d2d89051e46`  
		Last Modified: Fri, 23 Oct 2026 01:09:41 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
