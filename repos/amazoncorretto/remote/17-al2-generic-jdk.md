## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:bd912ee1d2a41ad0cb4dc335a09e85e2df624a49c4be43ad834032349b875d58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3e9ab474ca932420387e71327695f76d799edc4af1ec6333091d5ed39fe6affe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215512232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21430c8f81492cee48ac21fe91df32c8a55a5dce10ceb46a926a3b0d487ad055`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:30 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:30 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:11:30 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2001b736a47a2e6853246e1782c0e3bfa3c87d7a89d97b4bddc33fd9908bb022`  
		Last Modified: Tue, 15 Sep 2026 00:12:50 GMT  
		Size: 152.5 MB (152547636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dce18f6c98e7b64598676c532279c74321d566163c8eb3a9242e1e0c4961b1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7097eff099d59742d885fb95269b5e881139320241ed2c1416a867eed2319dbb`

```dockerfile
```

-	Layers:
	-	`sha256:0bdca1e1134b49af1607190fb508fa7d325262a2d3f8f1f2c9e5aba62bd32355`  
		Last Modified: Tue, 15 Sep 2026 00:11:53 GMT  
		Size: 5.5 MB (5536339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d25942b04b581c39bd64f6f3c8b915ad41e5a9c8ea515faf82919c8f68700573`  
		Last Modified: Tue, 15 Sep 2026 00:11:48 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:776b7bbcb1646c763d6370e4dc973c5160cd580eae5af2566e391607e675dad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215993140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131d6ad4438978b105962af1665e074bb70e3d804a9d6c2d4820354b6a59155a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:08 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:08 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 17 Sep 2026 22:46:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c309f549c3cd8764548fe4deebd857c59d5853948697cc767262a49cc8bb5d7`  
		Last Modified: Thu, 17 Sep 2026 22:46:29 GMT  
		Size: 151.2 MB (151188039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c53be6276adf11c5394f2407e913f3ec4b5465064cb7cf842056f6b1cea05b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5997b145a4e171eb0999077f25568fd2feb357ab7217cfe0a6c00cede03aa6e`

```dockerfile
```

-	Layers:
	-	`sha256:85c361bf9ec4a56bb560c6c83b8d27ae5260305a0d6e6b14cdd1a700264c3fd5`  
		Last Modified: Thu, 17 Sep 2026 22:46:26 GMT  
		Size: 5.5 MB (5535016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1603e75c819b9965e8827441fa55c62c107b4bab6ac0eaf0652bc0c2ab7ca21e`  
		Last Modified: Thu, 17 Sep 2026 22:46:26 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
