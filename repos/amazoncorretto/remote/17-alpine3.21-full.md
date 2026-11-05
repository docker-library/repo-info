## `amazoncorretto:17-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:396848cb98587cb0f2af48d323dcd28cbc99165f4b37e00ca70c9bcc6d7ad59b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-full` - linux; amd64

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

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

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

### `amazoncorretto:17-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a43235d7e66bcb408ca2e19eefbb4d2d0a0027a8b9da3d7efea788f07c1f177a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151634131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c351bec2c5e295d69aa7a352a5ad58cb2804960a9d04d871e8168fd154dbf175`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:42 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:42 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:42 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c006117d846f068d58b2bc6ddd6b900f349ceaf9c20b64f0cff435221ac226`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 147.7 MB (147659760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a024b5b87b82bac6f21809d3a95810ebcb6add8bdc81c30a16660fc71bffa7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8444168a827c36792bad8cc2e335075b388f63eb0faf7b03c8d13367bf49889`

```dockerfile
```

-	Layers:
	-	`sha256:fff9687a36b9bfb245ea7a65db52c335dea291a810ecfbc9ab7bb57ed9c38241`  
		Last Modified: Tue, 27 Oct 2026 16:40:57 GMT  
		Size: 586.6 KB (586628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00637784f15c00fe5ecd2a3042763734047b492bcfb70d78e38d049d0254da6b`  
		Last Modified: Tue, 27 Oct 2026 16:40:56 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
