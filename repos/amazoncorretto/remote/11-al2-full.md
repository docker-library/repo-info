## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:2ba9f4352d61f8eccfe6e15230749f6b17dc39da2c0fd42bf39c229a34a08bf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2b2756868c7116a77c53238693bbaea8c9981c77f03bfec33a05a5b315b4caea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211175894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e318385bd44abffe4ec7c57a3ba420aa66cd0bf9cdd20d391ceac90c9bd2a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:59 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:59 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:35:59 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076ef177e41c44b570092894f84d1d26ccea4dfff8212fd2d7934126cb351df2`  
		Last Modified: Mon, 27 Jul 2026 21:36:20 GMT  
		Size: 148.2 MB (148219073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3fd584abc6b95eaf32ca99b1366f390d119f0776a9e8cb29abcf79d4ca0f954a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1115e6c7a07ed1642ca80a805cdd47a0f4a676f662c4cb5e55de481469995`

```dockerfile
```

-	Layers:
	-	`sha256:1aa86b8b526553e8a73ccdfb399305577f380a278a69f60cb6a2e00400732c3f`  
		Last Modified: Mon, 27 Jul 2026 21:36:16 GMT  
		Size: 5.5 MB (5542802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcdf614140142fed0433d57ba9baf66fb268f9f75a16ce29b055f3dc8478701a`  
		Last Modified: Mon, 27 Jul 2026 21:36:16 GMT  
		Size: 10.9 KB (10903 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a2974636474c70e30725e043f40c7e64ddb8121774ab18e020e061d1603e6963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.1 MB (210122078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f079a157272eb0b1c24d376d7d0d17445d468b7a6a9d2ee8245deb6c2c0a9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:17 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:17 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:35:17 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be058a6b18fa482201ba0903df3f9e34f13bcc984f20b54523c4ec91560555e`  
		Last Modified: Mon, 27 Jul 2026 21:35:38 GMT  
		Size: 145.3 MB (145322014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f523d0c6db972a92c192786608ba9034c8e0a1b5e622b9eea85484d8224b1119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915543f7f81ecb3c956b6ed065ed4cf68fdda63e8b674cbd333256ab88231cb6`

```dockerfile
```

-	Layers:
	-	`sha256:e15bf6705c00bf80866e4c0e3061609fc0a41dc8b5aca60f5544a06d1f5ff9e4`  
		Last Modified: Mon, 27 Jul 2026 21:35:35 GMT  
		Size: 5.5 MB (5542284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4720129984b5f88f21c7756dcd57099392f8f63ab3dfff829d45e6d102163d1`  
		Last Modified: Mon, 27 Jul 2026 21:35:34 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
