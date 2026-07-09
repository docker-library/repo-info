## `amazoncorretto:11-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:a87219b9811f86224d9b0f828d2b46102f44cfc7f4c4b0bee82f44444e1a44ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:002172971bd7cdeb1df7cc248f8ff0c8ec9dd8deb7226f081943c22315ef3b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211133606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60d9f1dd1d6cff34aea245da6383034222f85dd1633df9b47b8a0817d5ecad7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:01 GMT
ARG version=11.0.31.11-1
# Wed, 08 Jul 2026 21:11:01 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:11:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a100b98f9470affbcc9acf14fabe16af7457c0ce1217a8dcfe1363d8f422fa`  
		Last Modified: Wed, 08 Jul 2026 21:11:20 GMT  
		Size: 148.2 MB (148175226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2195fb2f4b694f8e3ccb432062bbcd94479ac64d38ef1818bc1fb2b6a4f32774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5554323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f45bddc7380c9502d274af0fd43d565515957c99af1350a6857993816d5a535`

```dockerfile
```

-	Layers:
	-	`sha256:e5671ff1e901ba58feb35031f8d394aa484c7e61973d29e20c77854938febc18`  
		Last Modified: Wed, 08 Jul 2026 21:11:17 GMT  
		Size: 5.5 MB (5543110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be56c25374426e699e9eb78b773ba891ebf4d49eb4d3c24b7360696cec3af74b`  
		Last Modified: Wed, 08 Jul 2026 21:11:16 GMT  
		Size: 11.2 KB (11213 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6ec32892deea7ba013dc4fa578bc0d42d20b4fb1556f1aa3297502331995ada9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.1 MB (210113372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177cf235f24c6bd482285dd151ce7330e0e24213d8459a4620e8aecb0680f2c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:05 GMT
ARG version=11.0.31.11-1
# Wed, 08 Jul 2026 21:11:05 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 08 Jul 2026 21:11:05 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7922553a2f5839fef4bda6dc30b9bff6a634cbb670c73bb6923ffd690344e6`  
		Last Modified: Wed, 08 Jul 2026 21:11:26 GMT  
		Size: 145.3 MB (145325493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9ba814718725b0e09a33fa36cb9e8f2b78f981357da334fcdc2fcacf3a1988e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f001c4699e225b172dab5b78f20c9c93cf82d778a800749340845b5a51032e5`

```dockerfile
```

-	Layers:
	-	`sha256:37c211e2a5d3414f60318758bd81e56075312a0c1bc7bf69967411c4d19335c6`  
		Last Modified: Wed, 08 Jul 2026 21:11:23 GMT  
		Size: 5.5 MB (5542604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:573ef6643f8fe670614b77fb38eda75f7f210ef6e24d60701a79f6ce25887436`  
		Last Modified: Wed, 08 Jul 2026 21:11:22 GMT  
		Size: 11.4 KB (11365 bytes)  
		MIME: application/vnd.in-toto+json
