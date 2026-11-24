## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:cd18047879806ff86a69ec84696f5b69a925b56f246a63c8038f75d464909c1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:43398cd9e8dad60d346786aa9028b473be814e011d7782a1c31c1049e4b16311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211162954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1096b0e46138e00fc3cb7124c2b0afaa576622c9857409d54a2c962523009d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:42 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:42 GMT
# ARGS: version=11.0.33.1.1-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:09:42 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f39aaf2914ba1e06f4324d67e3d6246799cfcef80527507ddd7e9303fb6c84e`  
		Last Modified: Mon, 23 Nov 2026 21:10:00 GMT  
		Size: 148.2 MB (148232853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cdba46305947fd93e83094d8d39108307c3436161773c20f3dc0d19504e5896d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5c0b0ccf415b60203e4ac36c68af5fc486cddde3d013706d64dac41bc08875`

```dockerfile
```

-	Layers:
	-	`sha256:f5ae3537e2613cf7d83bfb7046ff27b1e122f8965e307a0ab7f3fef6717104a0`  
		Last Modified: Mon, 23 Nov 2026 21:09:58 GMT  
		Size: 5.5 MB (5542836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adcba735c78659345df0f297d3d09b165b67e387fbf039d70e65c7b27537939d`  
		Last Modified: Mon, 23 Nov 2026 21:09:57 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8c6383c174a996cfdc3d7632926451061a2ddd2086ad55b1e0bf78f7393aff77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210202108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682701eccdff861cc88b4b218bde4054c5194cd58686308332ac15089551febe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:39 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:39 GMT
# ARGS: version=11.0.33.1.1-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:09:39 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912c554f482dedef7069ae59c94aa248acfa579d2c0118e33c99d17e74c64c25`  
		Last Modified: Mon, 23 Nov 2026 21:09:59 GMT  
		Size: 145.4 MB (145405517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5a6511214e66d0a1f36d0afe58567cf3e0db2c951f4f7c3a179c914d3b799fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d787b913769e8b776e542302e17f2bf8c5f483fc4be67ee9c643597a3a6c8670`

```dockerfile
```

-	Layers:
	-	`sha256:e72b660131da681c6b6b65f9cd9d11b2d5a7ec14cf9f90e506fc424720f5cb13`  
		Last Modified: Mon, 23 Nov 2026 21:09:56 GMT  
		Size: 5.5 MB (5542318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6311510e1a0987b0d4e628e32bdb9899b79c1f5140f0ad5e0aed6678306477f3`  
		Last Modified: Mon, 23 Nov 2026 21:09:56 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
