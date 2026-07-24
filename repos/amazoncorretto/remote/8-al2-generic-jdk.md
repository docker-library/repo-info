## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:bc59de7616e44faa87604a79061f70cbe72b4761824444480c6be9f8b508625a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ae0492b1fbe30157ae1e6647d79f4a4cec9f58ab6582204e9bb5d8ca64ad4caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123016917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f71bf47ae626de803058ca7bf8b19d94525d548eb83c44c8d16d1368160c9f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:36 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:36 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 23 Jul 2026 23:10:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f1f8547c5e0fd50e9c20dae099bc9c6dca57b0083f4c959971420614ad33d8`  
		Last Modified: Thu, 23 Jul 2026 23:10:51 GMT  
		Size: 60.1 MB (60059622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:23028357ab654d85d2b3ccf6a5bec2400ed73d1d8c2224a5ab7cc9272b8d060a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80998760da12d6a1db407e9e58efc6f6bbd69cb3b9a05d385abfd7e2999ab692`

```dockerfile
```

-	Layers:
	-	`sha256:87eaddb2dfa49f6a91313436f272460b70c20a4e8dcad6e7c20a26342a2d9fcd`  
		Last Modified: Thu, 23 Jul 2026 23:10:49 GMT  
		Size: 5.4 MB (5355750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7233070bf3b40c916976ac31fea816b09b09eb29f8f720f2963497a43c493f3`  
		Last Modified: Thu, 23 Jul 2026 23:10:49 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e59e13a2ace8af11f248faa9a8e0af4eb0ecee83ebbf1b9b6368a3447ee12f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124691855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83d1fce3c8f860927527ca939ade92844b3cea3587089873f3c6ed1ba9313f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:10 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:10 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 23 Jul 2026 23:12:10 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5938dbe090e0b311c3c24487236222b39a41a18f020cdf4c0c98ba97b0e968bc`  
		Last Modified: Thu, 23 Jul 2026 23:12:25 GMT  
		Size: 59.9 MB (59901606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7e6f3ea29916408a3a74e2f2259b89f315a3452272c0169011ba86d4bcde3bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddce6758cdfb98e7739de26ff5689ad75c7807ead8930e4051b4a9d46fb2c74`

```dockerfile
```

-	Layers:
	-	`sha256:e79ef8f80ba956d9b41e1a881f0215c0ff71603167a1589f2ce5eb745afd704e`  
		Last Modified: Thu, 23 Jul 2026 23:12:24 GMT  
		Size: 5.4 MB (5355312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd2aaaea807d7d8e6246b5b9acce5cbaf57ac305325ac8f1a380faf3d717a91e`  
		Last Modified: Thu, 23 Jul 2026 23:12:23 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
