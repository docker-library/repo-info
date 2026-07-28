## `amazoncorretto:8-al2-generic`

```console
$ docker pull amazoncorretto@sha256:3170b564a9b62e9948370f8a7e159544623b1ddfe3a63d4623f5ccdbfcf788c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:28c5502e92513b5d2d5fbec24625bd7e19b531754c28a9aba5b2ce8a58904f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123022693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6015809b700e795a44623b8fcee5999939c9f5b4f5c78b5145195061406968`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:27 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:27 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:35:27 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46df55cd9eb7da3f9d0b6c7eb26eefaa6e393cebc55058091c6a62f16db338f`  
		Last Modified: Mon, 27 Jul 2026 21:35:42 GMT  
		Size: 60.1 MB (60065872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:22c25486042f438c8f091418959a4ec19b4d90a4d76c0e5caf5c96bab517afd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd074b0a247793e4c48684fea5629ad8dda41695aa4be7a40bb5c2a4f550e132`

```dockerfile
```

-	Layers:
	-	`sha256:3d805989e558b604496a7c178d3a540fba3b26cbb32b4dbd97509d9de16ec42d`  
		Last Modified: Mon, 27 Jul 2026 21:35:40 GMT  
		Size: 5.4 MB (5355754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74dfb16e0a73472724676898b46b6ffd7fcaf3ee07e30bdf6755ede568d4e0c5`  
		Last Modified: Mon, 27 Jul 2026 21:35:40 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3177fe6e548f1fb2c051dc442c72d64e69fb859569b317522934bce6d2f869b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124688876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e709049ac96f9b004e7c688bafc392b55f33af8d6b7418c150a3d67960ed65cf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:34:26 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:34:26 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:34:26 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71e82e47a2c8d03ba5f6124963a8b98d2f705065990e294ecf4be6925d59e3b`  
		Last Modified: Mon, 27 Jul 2026 21:34:42 GMT  
		Size: 59.9 MB (59888812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e0a5a01a8ba6250b7755f1550a1490ef638c12c05d80523872fff3fe35bfd61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7417eb7a2e8855965049c711f2d13f1a5bc5a36d6f92c5970851421d959174`

```dockerfile
```

-	Layers:
	-	`sha256:0c54f56d873ecbfc5866984ac3cfafe44ecefd528282e7dbcabf75bd16ca1d59`  
		Last Modified: Mon, 27 Jul 2026 21:34:40 GMT  
		Size: 5.4 MB (5355316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b082a2e02776e16f4fa63e9273c829f7e9dc8cdababf23d3da06bc0a10b71d5`  
		Last Modified: Mon, 27 Jul 2026 21:34:39 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
