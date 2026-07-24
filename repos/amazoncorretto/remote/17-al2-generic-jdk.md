## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:883353d339212dc0e1b6b398a770430d5e74cfbccec7b899afa65e58d2a8874e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ee696d4eaf08d7e08536a597cb1b3b29fd14a83a479d63e0d300071197eed1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215484680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce3fc0fe98ec7edd54f4a45656b3b600ff9e3c90b4debacf622f3eb2f512ac2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:45 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:11:45 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 23 Jul 2026 23:11:45 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab681a82f5beaa0bba9f1f89da4e4dce28cd4dc41b342c95a5b5db813d23222`  
		Last Modified: Thu, 23 Jul 2026 23:12:05 GMT  
		Size: 152.5 MB (152527385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d7ce4aa0ae2ea69721da3ce2f226877ece1e87559589a0621d0b1360ad64536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec5612d9fc98e566fe267f49fb30cf9b5bb05d4797bf021830fde6ca70df6c3`

```dockerfile
```

-	Layers:
	-	`sha256:e46208ef0687003ce970046e5c7d0da89ce27dc8c65b5865ea9932469f61ba05`  
		Last Modified: Thu, 23 Jul 2026 23:12:02 GMT  
		Size: 5.5 MB (5536305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93a3911f99155111d3e61696f4b886ddaae9abf2daa71029cd94a02386e62ad1`  
		Last Modified: Thu, 23 Jul 2026 23:12:02 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:af1316fd51c60cc2978d4d7cc1b0a20cce62a80efa1930e57d1707cfe232f110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215989497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4919b2f1fa26fe65304bb63d652d31936fa820dc777d96cf6aec4dfe18f44405`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:27 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:27 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 23 Jul 2026 23:13:27 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d9e45e7e42a5db885d1a913fbe2889e12d019a7cc9f968abd5416ad7cda8a`  
		Last Modified: Thu, 23 Jul 2026 23:13:48 GMT  
		Size: 151.2 MB (151199248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6ebc990086b237570e8c57fe3cb22374851061235eff4c328c7be0da8f1de2ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4f9d2c4121a4372667f33c3a5ac235370d1c8bf77c4bc8c4a609711be7c7d0`

```dockerfile
```

-	Layers:
	-	`sha256:679c658f1f9c722592e65960d0cf97528a875827762a029a54604dcafa81b6e0`  
		Last Modified: Thu, 23 Jul 2026 23:13:45 GMT  
		Size: 5.5 MB (5534982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a870ec153e3d97d3c333e5555090fc374d4173d127338e46fbfd194280f93c0b`  
		Last Modified: Thu, 23 Jul 2026 23:13:44 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
