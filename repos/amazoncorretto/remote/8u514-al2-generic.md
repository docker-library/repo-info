## `amazoncorretto:8u514-al2-generic`

```console
$ docker pull amazoncorretto@sha256:44c8f15c47148c3be81df6b953d9880d20a08cb755bc123367ede20c3c82c3d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ebe602dcaefc465839755f653eaa85807be6f68a8df443349cbd67cf1033e566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122956181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e35e8194507e7ce2deb85d8766a15018aff9d40ca145aaeabd3bc88a3cd8bee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:46 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:46 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:04 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:04 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 18 Nov 2026 21:32:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9729117ae9364c6d8fe8fbf58ce55bf2d18edb4f6ae553117e8edfa824ca2755`  
		Last Modified: Wed, 18 Nov 2026 21:17:00 GMT  
		Size: 62.9 MB (62929268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87957bdc457276b46a29ec8efea7f2b621910d8ee9b6e62948b0f7400dfbf9f4`  
		Last Modified: Wed, 18 Nov 2026 21:32:18 GMT  
		Size: 60.0 MB (60026913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cf7108282d7080fe32f1313a43c3cd4f19e4fea11e4cbb39ad5f6e05fb69ab1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d7f90cd51938bf8b86ad0f0a8a8414c08d14bf51af3e38930e316fd717760d`

```dockerfile
```

-	Layers:
	-	`sha256:f0050af4e8dca1caacdf5dd396cfcbd9a402d8748cd150beb4a8e21c71fd4143`  
		Last Modified: Wed, 18 Nov 2026 21:32:17 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcdaa05f13fecd60b84cb691282ae066cec3acb52cd5393127176780838cb0b3`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:18581b44d56c47462346c344d69ca08d6b5ee8418e17d89f595e17b6c1eb06cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124688275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e04b0f8ab3a71f7b4a01e3028ca53dcf55cee1f4af2a4acbe5a5aa62db5c90`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:49 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:24 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:24 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 18 Nov 2026 21:32:24 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:bcb24dedbad65dfb6e85c3cf0a24a8dfb1c5baea614450ec3a4859c498def7aa`  
		Last Modified: Wed, 18 Nov 2026 21:17:05 GMT  
		Size: 64.8 MB (64776056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca3623b270643ef84568e71d8ef2bab3f9053ea8f3d882021147a0c61966176`  
		Last Modified: Wed, 18 Nov 2026 21:32:39 GMT  
		Size: 59.9 MB (59912219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0686561857fc78de33eb7dd7c090f884722faa18e53954c8bc1b7ba1e16a5729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232079c3a1255620bc22c41a578a710efdd14f2393eeed01d4bb05f9b7551665`

```dockerfile
```

-	Layers:
	-	`sha256:a02fc9e95bef1fcacc5bb13e0d2b655359cbb833d24b420787623ef505872b46`  
		Last Modified: Wed, 18 Nov 2026 21:32:37 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8002d153d23b7bdef3eca8107eec1f630708ce46f84462ecc939dcf632b14e0`  
		Last Modified: Wed, 18 Nov 2026 21:32:37 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
