## `amazoncorretto:21-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:6739c36bf2ec013d27c8287a6edbdd57f47a8c6a5649e2757ba54ddbd8d6d916
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:88aebde96cfae3370a08d9d4a91ec6954d8e240821ada153c11c661340f0ce82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228828773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc389334867af0ba6e83f101cf13d720bbf5d3c60fa8f198bd5fcfb3ca6c74c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:57 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:33:57 GMT
# ARGS: version=21.0.13.1.2-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 17 Nov 2026 21:33:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7ab0baa9315b3e4b8ed16e07b14e5d9dd571b42c4395056338892a211c9a24`  
		Last Modified: Tue, 17 Nov 2026 21:34:19 GMT  
		Size: 165.9 MB (165899176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:03b3cbed9daefb7767ff25dd687682bb1e049675dcb97b52900696ddb9c2ad62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dea86ccdfaaa032ea734d5cd4ed3641e35ef7d4d8329893a7198881690321d`

```dockerfile
```

-	Layers:
	-	`sha256:691c6a21539705fdac34142b50cc6b6446cd5625d36ecbeef5bd6e904879b62f`  
		Last Modified: Tue, 17 Nov 2026 21:34:15 GMT  
		Size: 5.5 MB (5536246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:733d6882c1c5828da196ba77d325a92303389ae64a2ff3c447fb461350929ca0`  
		Last Modified: Tue, 17 Nov 2026 21:34:15 GMT  
		Size: 10.9 KB (10910 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:31eee8dc5af5fb23486ab705a0ac6ffc91721cf66ed47a5ddd61e377a3e98718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228889360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2fdaa18d54abc9970622c897ff812b6eb3cd375249db0e2f6bc15b5584d5535`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:59 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:33:59 GMT
# ARGS: version=21.0.13.1.2-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Tue, 17 Nov 2026 21:33:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63e4e5b4b7d146f589d334b0d1d0c687a6d1211d6aca3ed7b33120b9fdafa54`  
		Last Modified: Tue, 17 Nov 2026 21:34:21 GMT  
		Size: 164.1 MB (164112958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dbc5ce62d16cc40033ac5c717d05696160cec006e49d3017e6c2d4cc79c19bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9c75c5750c3a110e64dab3475ccf2e10d5304a43b278ac794d938409a1d5b5`

```dockerfile
```

-	Layers:
	-	`sha256:e05512aa019ee46afa6b872dacdce45f74f7b350e11a4077fb66e49b9e0373e7`  
		Last Modified: Tue, 17 Nov 2026 21:34:18 GMT  
		Size: 5.5 MB (5534923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:577594e567c696a99f3abdf8c94afba93f061f1423ba978e1bdc9b5faa907307`  
		Last Modified: Tue, 17 Nov 2026 21:34:18 GMT  
		Size: 11.1 KB (11050 bytes)  
		MIME: application/vnd.in-toto+json
