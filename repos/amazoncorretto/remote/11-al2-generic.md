## `amazoncorretto:11-al2-generic`

```console
$ docker pull amazoncorretto@sha256:ca38f87716d38fe2241c402a3bfaf525f2277d18bb2795372c9d90d51f8e90ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-generic` - linux; amd64

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

### `amazoncorretto:11-al2-generic` - unknown; unknown

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

### `amazoncorretto:11-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d7e0075c4055d2135ee886db5b5ff2e6a3a19dfca1875973d4552213525b3bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.1 MB (210122555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22179c1e9e50f67180ec9e02776c799bed17b226adf8c83e0baec3cb3e0a659`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:52 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:56:52 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:56:52 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8828525ea05482edf2a590e1e79671abfea8f85d640e5c6fcff0ac0ce0217902`  
		Last Modified: Tue, 04 Aug 2026 00:57:12 GMT  
		Size: 145.3 MB (145321960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9262be0c477bf3a771157b3243ecb85e56e81eb08ec6d37115ee9e4407e303e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bddc69edcd28809e62e378bdf0123baeca7527cded7baac1439d8ffbce91d3d`

```dockerfile
```

-	Layers:
	-	`sha256:4448486afdf529422e5f9d0f10a000d2e642534e9ee6af0894e86b0ea97ce7d9`  
		Last Modified: Tue, 04 Aug 2026 00:57:09 GMT  
		Size: 5.5 MB (5542284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:481108087f1e478ef4db4b9163be2fe604385b1caa54f6831458c32b8fa70aeb`  
		Last Modified: Tue, 04 Aug 2026 00:57:09 GMT  
		Size: 11.0 KB (11043 bytes)  
		MIME: application/vnd.in-toto+json
