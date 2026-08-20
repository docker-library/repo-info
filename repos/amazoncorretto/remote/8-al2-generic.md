## `amazoncorretto:8-al2-generic`

```console
$ docker pull amazoncorretto@sha256:639409e01579575b019e8be871d3a96ef491eb25e82644a2fad75d702305be9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f8b31b506ae13a73c046dfee66cecea25f63aae9625ef1c0c93fda160bbcae6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123007031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1648661ad61ed7786542758fe435279c7e9642969df7d8fe0cc2b0ad913bd808`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:55:27 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:55:27 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 04 Aug 2026 00:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:55:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0ea86e1f0445c8ce5f167d37baf9fd19ccab37abf5c92cf7740af7f8bd12ce`  
		Last Modified: Tue, 04 Aug 2026 00:55:42 GMT  
		Size: 60.1 MB (60057197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6fec9fadcbbb15a56ee4b3404171aaca26b9f11f9220f7ddbc99396ee0b9440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5657b91bfa1fe840447db7f7801e803ce91388a7b26055125ee736009b5815ad`

```dockerfile
```

-	Layers:
	-	`sha256:2700ab68aa5cd961954751e29fc4f826ee4db0bedf88e3946ff0f60ce6986768`  
		Last Modified: Tue, 04 Aug 2026 00:55:41 GMT  
		Size: 5.4 MB (5355754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83433d2bfb55f5d6527c1329d11b8d9fc3db18a85bc2abed39e80ea37283d76f`  
		Last Modified: Tue, 04 Aug 2026 00:55:40 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f95d80a1808b8a6886dcd1df90091b6ebb5665829e90343c5f2db6d58d0a4a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124669165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffd420ec2555338cc29500522d0a2c41111c6085d67e3317cfcb69154e569c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:31 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:31 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:15:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ced3ada297c5d7a774bba43cef33e71c3a3f2d532763e9717e6c619dcd5a17`  
		Last Modified: Thu, 20 Aug 2026 17:15:46 GMT  
		Size: 59.9 MB (59880049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8c5c275ee136044bb2aa24bf2edf061090e4c89852bd03370dee512862e844d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e36d348c49cdb9526b857bc40a5142b29820a2694d7827e511a54695ff448a`

```dockerfile
```

-	Layers:
	-	`sha256:844aa2de97e6c2f9f9f75d72fe61489ae79e19fb677748c96011f9fe85fa282a`  
		Last Modified: Thu, 20 Aug 2026 17:15:45 GMT  
		Size: 5.4 MB (5355332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cedbb6db3dd6c28d47973adada46429c86cd8baabac89ccb11940912153595f`  
		Last Modified: Thu, 20 Aug 2026 17:15:44 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
