## `amazoncorretto:8-al2-generic`

```console
$ docker pull amazoncorretto@sha256:c598853186ed3c52a10e402fe2b7fd01ded894dc49cac1e8a24b121eed9ce7ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f8b31b506ae13a73c046dfee66cecea25f63aae9625ef1c0c93fda160bbcae6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123007031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1648661ad61ed7786542758fe435279c7e9642969df7d8fe0cc2b0ad913bd808`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:55:27 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:55:27 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:55:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0ea86e1f0445c8ce5f167d37baf9fd19ccab37abf5c92cf7740af7f8bd12ce`  
		Last Modified: Tue, 04 Aug 2026 00:55:42 GMT  
		Size: 60.1 MB (60057197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6fec9fadcbbb15a56ee4b3404171aaca26b9f11f9220f7ddbc99396ee0b9440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5657b91bfa1fe840447db7f7801e803ce91388a7b26055125ee736009b5815ad`

```dockerfile
```

-	Layers:
	-	`sha256:2700ab68aa5cd961954751e29fc4f826ee4db0bedf88e3946ff0f60ce6986768`  
		Last Modified: Tue, 04 Aug 2026 00:55:41 GMT  
		Size: 5.4 MB (5355754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83433d2bfb55f5d6527c1329d11b8d9fc3db18a85bc2abed39e80ea37283d76f`  
		Last Modified: Tue, 04 Aug 2026 00:55:40 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:29a7032c782a75e92bc885d2f0ad4355c3c3b1d5fb464c92f2630747f248fe0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124689414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf44d502c90e1123fb6a12ff266775d2117fd695948cc91aa7e38186898d95d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:54:24 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:54:24 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:54:24 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:54:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade73ef9f8cb4d5db5121a6aef354d0dbb83a01ebb7696a39d3ae9005f7ae986`  
		Last Modified: Tue, 04 Aug 2026 00:54:39 GMT  
		Size: 59.9 MB (59888819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e75411f355955c9f86cc289130cea111afc76b3b94a36be986b9bb46497a994f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bb661721aaaed8c1f420a0d446ba2e4a36026d6e1f3f7ebbb0d67e9a0441bb`

```dockerfile
```

-	Layers:
	-	`sha256:e519fad2619481e2a9b4ec3775007886dc5b86c84d33c88b6e01a6c757ee6fae`  
		Last Modified: Tue, 04 Aug 2026 00:54:38 GMT  
		Size: 5.4 MB (5355316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c3d0ab57bf3b687b55da27a61c5d8ca5f76157b6e975afb7eca04bc155d95b`  
		Last Modified: Tue, 04 Aug 2026 00:54:37 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
