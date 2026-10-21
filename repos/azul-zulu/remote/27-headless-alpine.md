## `azul-zulu:27-headless-alpine`

```console
$ docker pull azul-zulu@sha256:04d5eaa7c86337179c5c2e707efd04fba84c9e8da88b398f16e24e880ed59570
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:74e8b81567b9664117b3a28338c8ec9b17fff4ef46d7cbd6990362ebe0175ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182957745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc697e56b8a358679c77ce4f76da2591746eb180b4bc7b49b77ee2ea1579d0d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:08 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:08 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931de1dd7688918b83283714a34bf8d75d7a05592cbbadafb197efb528d020c5`  
		Last Modified: Wed, 21 Oct 2026 21:19:24 GMT  
		Size: 179.1 MB (179105518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6e74bf98645b74b201844dd71c849a9eaceb333d1215f64eb500e711b9dab39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca2e36cf3972feba7ef678e414d7f4bdb86e39d3cebc3c813fcf3ebbeaf8627`

```dockerfile
```

-	Layers:
	-	`sha256:11c39ed02f7b2b10e25de6b58ce9efbd7b658e58920112bcfd090740bbd43132`  
		Last Modified: Wed, 21 Oct 2026 21:19:21 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0b9e4325cba293a20fcd41c8cbb2a2b92f920feb56ac8c8385717f67bdb44fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180868682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ea2e3a9f03f4c969e5cc1e0322e8d0034b42c0953e658c0c30a5e2519a51f2`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:49 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d6d710cff2b5f2e04084a5a631319887aa337daf516bbfb64f0603799e7a82`  
		Last Modified: Wed, 21 Oct 2026 21:20:07 GMT  
		Size: 176.7 MB (176679188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8c2c1d02f0ea5e32dde0b345445a49c23d4c52540cad6ef2c0e7953cb22e5b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06b5233494db37f9b72a12aa2bf0b9f0052fbbd216a9eb3ebef4f10f37b42f0`

```dockerfile
```

-	Layers:
	-	`sha256:a7883b98fd7a46eabf588a0f2e028eaf46c92cc081974c748c7da7272606b675`  
		Last Modified: Wed, 21 Oct 2026 21:20:03 GMT  
		Size: 7.7 KB (7658 bytes)  
		MIME: application/vnd.in-toto+json
