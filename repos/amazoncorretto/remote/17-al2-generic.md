## `amazoncorretto:17-al2-generic`

```console
$ docker pull amazoncorretto@sha256:03946e013c4496497d8fa5c2a7c6056b8081da4d6c832b325eb9a77bbd467b07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:80b886858cc85340cc37ed8d198de4b00f945986cab814ce4a087e727bfc4423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215625643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ae59a1c8b6131852529cabfec6a909ff0dc15bf0850dd6318a591cb7cb67c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:02 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:02 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:12:02 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981277590d576971f89f8c1dd624f7955b4f704914de53024b5732785376c6bb`  
		Last Modified: Sat, 18 Jul 2026 00:12:23 GMT  
		Size: 152.7 MB (152668348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:17dc8f93dc4e0ded22199313d32fb4da1e70c6b2b1ada517222f6b0e17073b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e726d69557dea118bbb50cbad06dcb8a6ecd8cc2c3d26a6e8668b69184b5ccf`

```dockerfile
```

-	Layers:
	-	`sha256:cd57b79e9fa05278ed7f0578d02ba6c660cfc14cb4ba372745253f8b66126d37`  
		Last Modified: Sat, 18 Jul 2026 00:12:20 GMT  
		Size: 5.5 MB (5536617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0346965aee357ee457ec4882bb19ded86f980fd23bba7de3cdcb054becf4e73e`  
		Last Modified: Sat, 18 Jul 2026 00:12:20 GMT  
		Size: 11.2 KB (11212 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:967f2f1a3cce314c28781208f23382690f389787d91f0587751a66b66591e108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216061195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0482282ee9a254a7a8fe391abb652be52667d5e450d705f9672692358fa6c287`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:11:47 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:11:47 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:11:47 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:11:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b247991e3a54278b1668c41e0c12797d09148174ae063eed054500f2a17ecbca`  
		Last Modified: Sat, 18 Jul 2026 00:12:08 GMT  
		Size: 151.3 MB (151270946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c602f9b5b8e68e6e4e80711c8847f30545db786b374c8e9c094179b6139ec0f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d339db3c72bbb0f65b5291ba18fae97fc0d952fdf635e994ab3206347357f1`

```dockerfile
```

-	Layers:
	-	`sha256:80c4a965b70a61f99309212e79a353b1101820b66288fca3e0a5b647f28a62da`  
		Last Modified: Sat, 18 Jul 2026 00:12:05 GMT  
		Size: 5.5 MB (5535306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f83225fa3378f0bcf62e70271b214a2b2e053082a480b9bdf41393dd586b101`  
		Last Modified: Sat, 18 Jul 2026 00:12:05 GMT  
		Size: 11.4 KB (11365 bytes)  
		MIME: application/vnd.in-toto+json
