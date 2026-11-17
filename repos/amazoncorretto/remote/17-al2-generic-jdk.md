## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:0ee4047f3cc2514e094b37295f80b0aea9f7701e017749ececde6c2501bab56a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4f9fdd7b999bdb68ff7a9eb71287a02b418ab91886a7b5a7b5c5a22767f288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215671030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0acff6434ea022f13fe4ebe1c8249675dc8d45e1cf0651d9bb02082756e74c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:41 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:09:41 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 16 Nov 2026 23:09:41 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7e7ff5a5d1ef1a92ec0bda87a94dce8911e85b304173148b627f89c433827a`  
		Last Modified: Mon, 16 Nov 2026 23:10:00 GMT  
		Size: 152.7 MB (152741433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f3055fa6ac5594c4b1cc6301a446bcd648a5a3e9745ab88fef75229b20b2033a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9b39ae237f96b2f955f7bfab1e760941313792c559b92effa708ce82e65950`

```dockerfile
```

-	Layers:
	-	`sha256:af2df642a9a1b5cbf65fb3be1f019130af9f5d186014521f063eb902cffc1a55`  
		Last Modified: Mon, 16 Nov 2026 23:09:57 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e7eb35dd54a1cb0991682d40322726eace507be695e461aa763f812d7c45967`  
		Last Modified: Mon, 16 Nov 2026 23:09:57 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3bd63349a7c424b9317493da49ee37d6766c222778de7a6bff9c90823d89c84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216258890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4710ad0008f0c09aae3ae33454a9054893880cce43577641f9e915817a423ee1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:39 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:09:39 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 16 Nov 2026 23:09:39 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a047deb0fa9eadc8c72aec1f31a4a3b84ad1aa2f04c6b030d9ccf0872da38c0d`  
		Last Modified: Mon, 16 Nov 2026 23:10:00 GMT  
		Size: 151.5 MB (151482488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d26ec30812955945022c92d5ad38bdd11404bd93189958f97a0aeebff3e553b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b85dd60e8f102ffebf847906a48dcb0aeefe83499fd887c7ce6d68b1b9b90a8`

```dockerfile
```

-	Layers:
	-	`sha256:d30e93da0989a494967566385b62021649ea461d3b0a758c881814821bc1b849`  
		Last Modified: Mon, 16 Nov 2026 23:09:57 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac1d2224532668ce78c5e7ac91e29d9ddd8061d7a8c9a83d191961d4f5775202`  
		Last Modified: Mon, 16 Nov 2026 23:09:57 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
