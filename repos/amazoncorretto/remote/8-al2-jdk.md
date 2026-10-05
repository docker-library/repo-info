## `amazoncorretto:8-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:dd6fbdf25583cb45265b279c7aeaaa612c98ba88b5a6cfadbb0f9777f7eaf136
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:59c847bdadba1e45571b383aca58b3f790e3e6722cf97da7b2609d8d78843790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123047810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969f01ef0a610bbc2274233800257bfc23cd8c77e259800d3b7cee88ccec0015`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:40:41 GMT
ARG version=1.8.0_504.b01-1
# Mon, 05 Oct 2026 18:40:41 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 18:40:41 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:40:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff0612f49e1fcb9f56bdc959a04699bebe81cc7d44898e3a0ad2663b783b018`  
		Last Modified: Mon, 05 Oct 2026 18:40:55 GMT  
		Size: 60.1 MB (60082898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7829d46300f9327dfee89af6fa638d168e31af0c95c50344dc69bfbf18984911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5bdbfc01f76a9f30a6e7af7f7bb50d55d2cd1324d86d9b371e7b825b04e48d`

```dockerfile
```

-	Layers:
	-	`sha256:c35c170ab9285b858f0dd6db21e4e225218e28c397c1a869f30a058b620af23a`  
		Last Modified: Mon, 05 Oct 2026 18:40:53 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb9c5c8b7fb2e4b6a95ec014755203af1cad29b913949d77a49e2316e9c8c02c`  
		Last Modified: Mon, 05 Oct 2026 18:40:53 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:99693fbf3ff4213eeafd8023f9118edef2dbdc58417fe339b508f8ee99563a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124707462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6e85c1333863aaaca52a2fc5074bb8a2e31a23b95d76e8cd479e35abaea101`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:40:29 GMT
ARG version=1.8.0_504.b01-1
# Mon, 05 Oct 2026 18:40:29 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 05 Oct 2026 18:40:29 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:40:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2020d3b765c2a4e4af6e6f7193b94522fe6adfe5ea11cb06118edb16d8916e16`  
		Last Modified: Mon, 05 Oct 2026 18:40:45 GMT  
		Size: 59.9 MB (59900091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0e52f629e35dced9322372467e1920def3cdaae0f05a5703dc6f9c0e0302c2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040a5d539d1bc5393d413205d2d2bb51ffbd5d646cd4a0a8f170fab34c583f2a`

```dockerfile
```

-	Layers:
	-	`sha256:ba2f4421d0e79475afa0b44b6c46199d199661927b810f4f05a94d05de7bd559`  
		Last Modified: Mon, 05 Oct 2026 18:40:43 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc918e674f608ad899ed1c9402eb4ba01fa681fcc4fece0ad82c1d30ff481697`  
		Last Modified: Mon, 05 Oct 2026 18:40:43 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
