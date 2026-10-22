## `amazoncorretto:21-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:39e215064e55655bf2a764f924915082e51976ce538394ebc0099041e4b81e5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:252694ecb8d8e6db7a21e71de30ac8682e72fa8bf1140deb0af4adc55bbd0507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165973590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1294d2d750c9fb75f73767d9a60f6638d54f495bbffca5afce9b541e4e8de947`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:33 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:15:33 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085d7bdf364e6a4a8280026430fa867ca16bdf477027bd09f9f5eae009c2d2bc`  
		Last Modified: Wed, 21 Oct 2026 21:15:52 GMT  
		Size: 162.2 MB (162179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f5bcf25f0ba037c91c5c8333b719efa104090e7ec459e81b90a78f4981805e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 KB (593071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d73ec4f3e6b5264a80df6a599b3dc2a6431cad33e9b09e2e33b4396ec50d43c`

```dockerfile
```

-	Layers:
	-	`sha256:a8a88770afc6c8eb64662752caf47b7ff8997d54faddf64504be556df3f038b3`  
		Last Modified: Wed, 21 Oct 2026 21:15:49 GMT  
		Size: 583.7 KB (583694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db751fcd5491ca2418b5419cb9e15f07d29fbc2d02878d5abddde469d729ac88`  
		Last Modified: Wed, 21 Oct 2026 21:15:49 GMT  
		Size: 9.4 KB (9377 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b162051e5109d70f897bc0817bae612b37b96fdc741d52b885a6820f29b1e346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164318844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852506bebc33c2497063e2c8a0dde15f8eb0ac7d295ab0b48ca1a580f3cac954`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:09 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:16:09 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:09 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4401422e26241802c9f9d6d0d66a09135ac398fa0d8214818eb59f1539f15c`  
		Last Modified: Wed, 21 Oct 2026 21:16:28 GMT  
		Size: 160.2 MB (160191463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b0d78d3602394c71c0b72c773d9151f736769ff0dbf2f47f80b49bd65435e9e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6c5813dbf9c47cc4f0e09696efbeb7998e0ccde632010a6bd4dea884536a74`

```dockerfile
```

-	Layers:
	-	`sha256:6d9546c8c8a4b910e326f76f25b3167ee774809dc87ac81fa4cf3c5ab75fd569`  
		Last Modified: Wed, 21 Oct 2026 21:16:25 GMT  
		Size: 583.1 KB (583113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:934f8b6b6a5a276ea024f7a3ad69af3d307e3b7f22936fcf30048fb0f5d76529`  
		Last Modified: Wed, 21 Oct 2026 21:16:25 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
