## `amazoncorretto:17-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:ceaa9d1ec6fdc87a789ac37f6d996a66439d7fa201102a213088e060f5d94035
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-jdk` - linux; amd64

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

### `amazoncorretto:17-al2-jdk` - unknown; unknown

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

### `amazoncorretto:17-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:78559ad8c4e562a1d2cd403caad6b11137b8f684ece260a737d6bfbe9be9a569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215993211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10174b789187a752bd1979db8b11ce60aecc7184c0a62529fe1d76d8396d3ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:02 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:02 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 15 Sep 2026 00:11:02 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d8cb84d66ece5a7eeac5c171dacdf00c62c3efb525425be4b1a8f5eda344c7`  
		Last Modified: Tue, 15 Sep 2026 00:11:23 GMT  
		Size: 151.2 MB (151188110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:67295e57782f01fabfe306b79f75d61bcc88cf789aed1dce7331ca20e4cc13eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b2b4888754d64d815dbee3c444cc0b91da1062ef8a62a18054ec8910182860`

```dockerfile
```

-	Layers:
	-	`sha256:504f73e8de3de5c7d44fad15689d19859e68914f81ee6c309378ad6cd2acd1b7`  
		Last Modified: Tue, 15 Sep 2026 00:11:20 GMT  
		Size: 5.5 MB (5535016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4505095a8b18c151937edaf4af3991e49cbd7a2c45d728aa74a4f16b1a27ad19`  
		Last Modified: Tue, 15 Sep 2026 00:11:20 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
