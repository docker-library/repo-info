## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:8923266c668347185b9f8bdc37c8a213d8b46bece9b077670bed38fe88a39ddd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ba7be24b4cb4b65e6a65155b814f9eeaacfc759438946f0c1cfae42cb6ead47a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139086453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8784bbc73886584c140f7b28b93e7b4b2319f61f207b191fd4f21d92d1a9b7f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:15 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:15 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:07:15 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1e0af204446e56235fe966d4bf317114dd794f23856202bed80595c55efd6`  
		Last Modified: Sat, 18 Jul 2026 00:07:29 GMT  
		Size: 76.1 MB (76129158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:741323e7cca21248d98843f2b39b33d6865e879ba116006b294889f84f5b31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5388982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87bb65476b1d2360e6e125cda506efaa0055fe15472f735054d686be9e4e79f8`

```dockerfile
```

-	Layers:
	-	`sha256:11d4767415013d4a23cdb90f04371fb7be1f07a4d5da34422ad0a9093908a6f5`  
		Last Modified: Sat, 18 Jul 2026 00:07:27 GMT  
		Size: 5.4 MB (5377455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fc940d8854570166964c321136e799726e014b58d9b6cf6f365cdfede8b0c5f`  
		Last Modified: Sat, 18 Jul 2026 00:07:27 GMT  
		Size: 11.5 KB (11527 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:latest` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:790062eb710fde476d368907eacafcb6018d598ba12ebce3e77728c3ef4a6ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124672002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4135d6de7507baa59c1530f2cf006e2987f02a8b4eaa78188b16d232c58b48cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:10 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:10 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:07:10 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3831725e3f63ffe1309d8dc3e06d933b6833f1dacaa2966243d94af9752b75`  
		Last Modified: Sat, 18 Jul 2026 00:07:25 GMT  
		Size: 59.9 MB (59881753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee110ca18e734d51672be55744ae4c616911b44f1cbfef4d1f4cbf7aa090e5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a255a5f245b356723fd7573ee646566413389b34bf9cd334f614185145cd9814`

```dockerfile
```

-	Layers:
	-	`sha256:c9821a0084aec1413fb0a8b3f5ce261fb8818692b527cb69bc604b1daa3a8996`  
		Last Modified: Sat, 18 Jul 2026 00:07:24 GMT  
		Size: 5.4 MB (5355954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba059388e2dfdb13ff18c3bd1296f954d397043953a33f3f4192cb4cf1fd4557`  
		Last Modified: Sat, 18 Jul 2026 00:07:23 GMT  
		Size: 11.7 KB (11691 bytes)  
		MIME: application/vnd.in-toto+json
