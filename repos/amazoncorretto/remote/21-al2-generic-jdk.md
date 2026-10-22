## `amazoncorretto:21-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:b12a8271fc128c3e4cb495e8444c10d46396aa0ddccd91109a97cfcdca8e837f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6d4e599b5c5dae1cb4f55459e9dfa7c10b7635b03e28a515c53b67b3a0ad539f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228613144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1308310377afba9d28b0ddea51d67ab6467e177d42ddf15800d5ad7006e06a48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:15 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:29 GMT
ARG version=21.0.12.12-1
# Wed, 21 Oct 2026 23:28:29 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 21 Oct 2026 23:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f89ab80b6fff1609dd41cccd5b8c96770f5312b79599638a6b673b458cd4ba`  
		Last Modified: Wed, 21 Oct 2026 23:28:49 GMT  
		Size: 165.6 MB (165648232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6c307afb5cc8a9894fb35ba67166c7a18f3c34674087fd75d28499355adebd13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4877ef432205ed685ad48306f432ae590a78684153f4f6671522402b3aebed3a`

```dockerfile
```

-	Layers:
	-	`sha256:79788bd23134727940246ebad60abb28f33c3a5805944e7f1404ef4121280fea`  
		Last Modified: Wed, 21 Oct 2026 23:28:45 GMT  
		Size: 5.5 MB (5536242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bdad4a49023113cc97167231e036eb212d4c34997ec91ef2bce6b4a5002990`  
		Last Modified: Wed, 21 Oct 2026 23:28:45 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1504bef168f32dbf3e09e4d3df7ce40d2f024179a3671af881daabc311d00f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228603053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7e357add7c315155b34319fc64492af700c23659808a1e466d9d6cb3dc4e3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:49 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:09 GMT
ARG version=21.0.12.12-1
# Thu, 22 Oct 2026 00:20:09 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 22 Oct 2026 00:20:09 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf81e0652f61900b817123a1d0ec45729776927c6236b5ab309ffee382a780fb`  
		Last Modified: Thu, 22 Oct 2026 00:20:32 GMT  
		Size: 163.8 MB (163795682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8d5f09ed20c3c7b0283626b9cead2a42f565071d602e0f978d02e43393dcad41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49399aa004a3a81179c0a06acf64990918d92872b04bbfa055047a1f0baf9373`

```dockerfile
```

-	Layers:
	-	`sha256:c6516ed8fdba82481a27c99e95f6197a039413c4b400aac7f7f43c89f0b64260`  
		Last Modified: Thu, 22 Oct 2026 00:20:28 GMT  
		Size: 5.5 MB (5534919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb74ca804e4c6b61db8a487952d0e8e8d70b8d22318aed3c22a5d3b6cffb5df5`  
		Last Modified: Thu, 22 Oct 2026 00:20:28 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
