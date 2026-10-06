## `amazoncorretto:8-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:3168c42ad337d3575d28a2143c2fff92da8fd71c1c9c8802d4ce1187d2002f61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4d84666bef143e1523ffa57c89a2b61bbad978c8db439be5c742f40ea8bcb534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123054530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97c35e67d983c32942bf4d5095395a424238ce264376a6c1cb45f4a61fecadd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:35:50 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:35:50 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 21:35:50 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701cdb8118ed1340d3c06714903fa82f66b9f4c5b95e8a746c2d1b062dc40417`  
		Last Modified: Mon, 05 Oct 2026 21:36:04 GMT  
		Size: 60.1 MB (60089618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:42ed3356a22a7294bc5ba9bace52dce5f132260f57fea1ef392e0aa308f1895a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f0ce78dc4ad1b8d35d6437682d31c011de4b272311043b286d005228102518`

```dockerfile
```

-	Layers:
	-	`sha256:16d4255041b75e5e263fa5a2250f78e79bda9688d6c1959e454b61cc8e30660e`  
		Last Modified: Mon, 05 Oct 2026 21:36:03 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e45ea4f0d7cd9222c573c94815d9144d44a81b9fb5d2b4fd8e64a6fb5148643f`  
		Last Modified: Mon, 05 Oct 2026 21:36:03 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5e57dc2aaee1cfd031370d785db9f626ad044800b40cb5e5e3c5cca50d20aece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124693895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4650485ea301053a0966b42ea430566aac247c39adc407da9356cce5e92a1ca9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:40:39 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:40:39 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 21:40:39 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:40:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eca99a68db82dadc5279e83d85380b3367970ed66254029d22fa1f472311359`  
		Last Modified: Mon, 05 Oct 2026 21:40:54 GMT  
		Size: 59.9 MB (59886524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a8bf526f5ebc04c93618ac70c8809aed37322cdb68b4202444c077fa66bde6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237da1ce0e660d9dc244e3600ff7ae5541c6a40805421ec6b973825bbdea7bc7`

```dockerfile
```

-	Layers:
	-	`sha256:d16eeabb83f9ecc44a6dba2d656fa00901672849b01d823a532b85bbc8e2885d`  
		Last Modified: Mon, 05 Oct 2026 21:40:53 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a00075b40904256061ca10b35f45962280e437fcf69046ee03959c0d9f9a3c1e`  
		Last Modified: Mon, 05 Oct 2026 21:40:53 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
