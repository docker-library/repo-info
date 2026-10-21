## `azul-zulu:21-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:13f9d146e8c0b708c5ba4ad65cd89675d4c4b91bd4c37dc56cfc1c0740dc9c80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a893d85a588c15f27c2937cf632b984e00c51d5eda360a49faa01349aeedfc5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164127147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a03e410afdc4d72f9569cbd9e1e472079b2e81ec0e672337540ebc8f9ea580b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:54 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:17:54 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:17:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cb83140fcab356c4851f2e6d80de93221c405c24b1fd0da900552514ce899c`  
		Last Modified: Wed, 21 Oct 2026 21:18:09 GMT  
		Size: 160.3 MB (160274920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e5ddef441e59efff23fedb2d7b102e55381e975932d862d9a2d9f006142cfb12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b7e9ac8a4b09dcf6680994ac10b71e243bf407356a739be4c57689a2b32f69`

```dockerfile
```

-	Layers:
	-	`sha256:752545f9a23582e86119ee10427288b1083c11268f24e1ace276e0ddb650117b`  
		Last Modified: Wed, 21 Oct 2026 21:18:05 GMT  
		Size: 7.8 KB (7831 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:18c8810346faab5df109035e310bc854c8539b46a4b498fa4831200607707389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162715486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5704b869c26a4ed53ccd35d2e0da097654dc9f88e1b406a6aa44847319b547`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:30 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:18:30 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e146b4f8030719bf431e6423f8d6f1ccf9dc25c1d9eb831e5857c5288a5808`  
		Last Modified: Wed, 21 Oct 2026 21:18:48 GMT  
		Size: 158.5 MB (158525992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:587742514edd62911d4b8a1e56b098671694b39c15ba1464e720fa2eca53cc49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3379c7ba8c735d385baa5b06e60ace6e97b41dfad2ba530cc699a85cf6f7fe`

```dockerfile
```

-	Layers:
	-	`sha256:a6dab6c838cce6e4285c7a12d1ef82233e9a48cce5dfd9a7c382053120832c0b`  
		Last Modified: Wed, 21 Oct 2026 21:18:44 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.in-toto+json
