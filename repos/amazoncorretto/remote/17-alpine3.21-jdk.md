## `amazoncorretto:17-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:5241fdd13d762e437807cb71e5b39e65b6872fffa5894907baa7a6b01e4f33be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b27a03620a5ccbd89296d537035bd52b28c343b38cc5358c9cd13387239d9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152812943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b030c5b673afad8f564a4baaa97a2589a1a8c1aac189defc13c7e44ba67af47a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:02 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:02 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee8f0891b29bbd2f11abbe8a4fb49a5fe919db7d8d8cb5c6e3a14d3f00b3297`  
		Last Modified: Thu, 05 Nov 2026 19:13:20 GMT  
		Size: 149.2 MB (149187541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6cd32f878d972084ed165e81485958f0d9b507280c218bf58c66c85f8cdad7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e8a55cf9bf1d3e54c9c880f4060aa2e06def3b011a84d792c16ddea944dd56`

```dockerfile
```

-	Layers:
	-	`sha256:076097a52088a35c89aef351b069699ac8aa8d79c28f1f2b3e194e9a5f4bdb83`  
		Last Modified: Thu, 05 Nov 2026 19:13:17 GMT  
		Size: 587.2 KB (587215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c582f15f6d379a4a0536a8aea1513bc9b1eb7f0b5a3894d64058809a53dd9b4`  
		Last Modified: Thu, 05 Nov 2026 19:13:17 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:621ab32538546a199acd66e0e9347907a1167907ee19a5e3b355223608b7eeba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151633656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e088d31c5b82edaab5724c75f6d19854ed864d302350100a4a9f4807e23bd318`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:49 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:08:49 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aba0d7687a13db33916e60770efcd7dfe7471a8da1c62a08fbb823f989ec66`  
		Last Modified: Thu, 05 Nov 2026 19:09:07 GMT  
		Size: 147.7 MB (147659233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c9ee4575c3f0e4cc3bb3dd3f50adcc46b2a63b250456f4032f9e845e2419a1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082449dedf78af2792f29147ae940f90be2c9ec534be188fd471ea71df59844d`

```dockerfile
```

-	Layers:
	-	`sha256:569774cacffdbb8966d9b19d3b7e8fff117d69d42fd18079b73a0675e23fb567`  
		Last Modified: Thu, 05 Nov 2026 19:09:04 GMT  
		Size: 586.6 KB (586634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f841b4c19d740624e4e6721fbce6be334f2f725343685fd2394c1d0a986966db`  
		Last Modified: Thu, 05 Nov 2026 19:09:04 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
