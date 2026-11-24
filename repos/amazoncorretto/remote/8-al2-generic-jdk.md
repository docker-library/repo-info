## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:6980c8f3b13917f4b3c871f7de487de885c58a2d30164916d7324452f7f0d56a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9ed4913755a9119434f1de2691cd9d4ed73d470ca6fa251a24e1959795ce3b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122957070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98c22a1540a92278616564eddcaf590d39750c0dea2bd11958623f8c6a6f1ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:08:44 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:08:44 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:08:44 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:08:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24bcea3df9dc485788be30500b34d177ba86a21d05792c01d88e75c497d2eeba`  
		Last Modified: Mon, 23 Nov 2026 21:08:57 GMT  
		Size: 60.0 MB (60026969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:11ea336ae08f7c342ce809085037465f33f63ae7b0eb9c654d1454900418ef0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc50eb5df28eb3053ffcd2f3dc32271b4851ed44dabb59d6c37a53558855174`

```dockerfile
```

-	Layers:
	-	`sha256:69d9582d5b7d7eabe5102a9643cf0265b4536347854f34878de2e71011b681d0`  
		Last Modified: Mon, 23 Nov 2026 21:08:56 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1711427ca5051391a7956f168efff948c49a48528522f6305b820d69bcbbdcdd`  
		Last Modified: Mon, 23 Nov 2026 21:08:55 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f0d1f5ccb0585d7b7f9ba61a67ecaaff1ab21b68a47f98aa31d0ba935ee4a9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124725181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f213fef2f7fbd633059effaf632d68fa467bb6652c9b04a410caaba23bef479`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:08:48 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:08:48 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:08:48 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:08:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366ec2b1404bf33e2ad09745a15be2a14c95604bea6b75f18dcc71cfad02d530`  
		Last Modified: Mon, 23 Nov 2026 21:09:04 GMT  
		Size: 59.9 MB (59928590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98291805350c46e70d6a7ac13a851c1e9353ea11d618c5ce6f558a36221f84af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b70e1f7cb1e35c1e36803905ef95d14a0dadce7f4133894187d2af95747cde89`

```dockerfile
```

-	Layers:
	-	`sha256:1370be420b2928aa962b3bf3680c1f28c52728647c2837fd112931718d934eb1`  
		Last Modified: Mon, 23 Nov 2026 21:09:02 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c2cdc7d291e289c9c8cd11c2910d7db40a8bbdcd7d89827db10cbe045fc420c`  
		Last Modified: Mon, 23 Nov 2026 21:09:02 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
