## `amazoncorretto:21-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:948dcc7c593fa158387ecb62f36186024902e598cf086f33152e7eb2fd85090a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6f26af88229ee6bbde6822e481ef6499b7aec0208789e8fbe8f8cd47ec082855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228613176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db37049503be903689e90699cd462c02e5c713f8c9225d7d35f7189d18c33282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:51 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:51 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 18:43:51 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebf1ea90da4b1f800ff5e0ab436b22c0ba1982ad2fd15b4aaebd452dea57994`  
		Last Modified: Mon, 05 Oct 2026 18:44:12 GMT  
		Size: 165.6 MB (165648264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6823d4e94e4233e0f514884a67cf987e47d8527cb1b2112ebbec23e05c7fa078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8ae3203c10fa0163b6adac13ec1258e47a93af351220c608ad737aaf71b825`

```dockerfile
```

-	Layers:
	-	`sha256:9a2d9e53aed36213bb0de4df18603838f965a00b38853c8a55ace31bb7eb975e`  
		Last Modified: Mon, 05 Oct 2026 18:44:08 GMT  
		Size: 5.5 MB (5536242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f16eb1ffc6831c24bff93c10e3aca12a33e2c23041a21b27980b81169d35f8`  
		Last Modified: Mon, 05 Oct 2026 18:44:08 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4bf75e706836b630b5064a35392cd119004cafcd796054f29260f98d9354420b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228603174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a131bc9d25827345a7899244848183cf9d6ab0aaff32a7af80a0e8877ac0494`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:01 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:01 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 18:43:01 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b406a4b6d71651898d1fe924d79cc24c2162355cac13b06ae550052ea2fc852`  
		Last Modified: Mon, 05 Oct 2026 18:43:23 GMT  
		Size: 163.8 MB (163795803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:45aef95d2e5129c7291054cd3752bcfb5070044348a5b5dacb3fd28e52174378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1725484899517ae826911eae6b41ed5075c2c9616ba19d404320af9d628cf9`

```dockerfile
```

-	Layers:
	-	`sha256:8c975f9102065cf638de4f7038655a59dd6e523437356df7d57ba5f7e1a65f14`  
		Last Modified: Mon, 05 Oct 2026 18:43:20 GMT  
		Size: 5.5 MB (5534919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ab3dd822e28df271546a8b8fe59a06dea80448a4420825b5e3d2072980b074d`  
		Last Modified: Mon, 05 Oct 2026 18:43:20 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
