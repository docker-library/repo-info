## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:da8ceed26374e3fba06df19bb846b15fd978acd8b4f1e06f0119bfdd4397d562
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1b8cdd61387ca6a00c46d40eddbb14192af039846ebfe4d2802315a8aaf41577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211162108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b717cf4a8ddb743657103e427c06b961580f76ace699b44bd32c14c4203b180d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:09 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:09 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:57:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f66bdab7280b085fea06c135dc53ff9a2b41688b10b5db18110159b49b386a`  
		Last Modified: Tue, 04 Aug 2026 00:57:30 GMT  
		Size: 148.2 MB (148212274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:55a8cf5720d9bdeb0dc6582456d7c5f50db9ae1193cfced4638d9ce7919c4e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e452effa5346d3ec8ace89970deab7a885f0ae751d4a3aaf5bcce8a2d248bbb`

```dockerfile
```

-	Layers:
	-	`sha256:4dc8af9cee9037cac084898eacd9a21b9779156f71975200a21aeb7b18b3ffcb`  
		Last Modified: Tue, 04 Aug 2026 00:57:27 GMT  
		Size: 5.5 MB (5542802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cabe5de0064c7f1f1604d1247e5f7ad81925b13722e8e97d33c17b46c074978`  
		Last Modified: Tue, 04 Aug 2026 00:57:26 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dc4770d7adc49c3a3509defc76276060e573448de777e7c7b4f7e2b5b30bdf0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.1 MB (210110220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee64f6ef49c4936278616547e779f4424b2242e378fa5efec9c0939ba6c2dd69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:06 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:06 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:16:06 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede12d87de10e18755937a8096d64a34f43c2ef44042a641da08dc7405b856eb`  
		Last Modified: Thu, 20 Aug 2026 17:16:26 GMT  
		Size: 145.3 MB (145321104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d26028b93e09cf665f4a814db12c82e6053f0764143f70c81277b01d55ec61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdc7ad648c60ba152feb48abd8af99c799ac893d95ecfc16d4e11da59688d2a`

```dockerfile
```

-	Layers:
	-	`sha256:666df75c3c02afc385ec9d3fd4e4fc6ff784462beb07f263942e01a94c3ad182`  
		Last Modified: Thu, 20 Aug 2026 17:16:23 GMT  
		Size: 5.5 MB (5542308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:479222895bb3f2cde1c5ee747d7392d48a9b7275501022a2e22c720141a8f774`  
		Last Modified: Thu, 20 Aug 2026 17:16:22 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
