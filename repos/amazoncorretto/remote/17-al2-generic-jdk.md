## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:33fd07ec907358b4b19419568f026a3eae9faeeb9c654b3155b90b61ecf3b31b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fa390e088c5e906f62582084acc7666ad313cdd92bf7ff673713c2382c7d76c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215726345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77018b33525b2126c68a5ef0acf4a12cc50bd688336cda8472f38250d54c68b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:58 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:58:58 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 19:58:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bd0afad92ae1b689ac47689b9e93efb8265cdc4d0d35ec00945b70f558d120`  
		Last Modified: Thu, 05 Nov 2026 19:59:19 GMT  
		Size: 152.8 MB (152787492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8936fa5559209b51c85d7cb7f752acc4ea214414e10771c93075880b3ee816aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893fddcc45d61a5dfbaa98a419c18a1f1966501843c6a62ba892d4b9265e8bf7`

```dockerfile
```

-	Layers:
	-	`sha256:fbed1a3c97e6da000689ccc11d20c30a20680161130b67fb540f57de152e4af9`  
		Last Modified: Thu, 05 Nov 2026 19:59:16 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6172c07410fb243f7ae05789bf4be048751cf115afe872115421011c96719f`  
		Last Modified: Thu, 05 Nov 2026 19:59:16 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7c2e820a2af4323a0e7e821a00963b7dbd3f29881213846e31fdcf084e8ca032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216369125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6982b238eefb0d8a6c58020b13c6a97e219d794cbfb067646eeb8e03bd60f361`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:29 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:15:29 GMT
# ARGS: version=17.0.21.0.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 20:15:29 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e665a268f9c2d3e38ec7d93210c2445775d85bebd0823bd4314e1162aab55f16`  
		Last Modified: Thu, 05 Nov 2026 20:15:51 GMT  
		Size: 151.6 MB (151563167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4461d1ab1bf1af5496c2908bd172c0f6c5c50b155dd9b6126139f82a1c4f3ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e65c070f6cccf7ef874b031ddd8150fe15a41e6d2868b42de6892397f75402`

```dockerfile
```

-	Layers:
	-	`sha256:5f794077ad8fb6c8f81bda0ec2d1e4b49e82cc2ccff858512663e6cfb3c56bdd`  
		Last Modified: Thu, 05 Nov 2026 20:15:48 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041b272894bd82915a0b0463cde7a2263db9327f2d84c30d4b3e596ca7005e60`  
		Last Modified: Thu, 05 Nov 2026 20:15:48 GMT  
		Size: 11.1 KB (11051 bytes)  
		MIME: application/vnd.in-toto+json
