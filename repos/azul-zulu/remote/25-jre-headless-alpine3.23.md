## `azul-zulu:25-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:d68f4d4081208a4df9dd85b2daa96656c81fc8e2220e9674c2668b4b30ce42ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0316123c10dd3fbc49cc0fd65d983e5d12e912581b56a0626b05fa59acbf3247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86777194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32623ee9a56905c574429ea9d83c8d1ea75f76c035d0540d08c5a30068efd449`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:51 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:51 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:51 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057923e87019df46f70476f9d3199602d7e2166c5f31ba77f9396af94510ada8`  
		Last Modified: Wed, 19 Aug 2026 17:37:05 GMT  
		Size: 82.9 MB (82932773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ac046d9abed6c144473d30cf7040840c181f3b55f49861c7cf02b9d8018aecf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa888799a4c737ded470c64515ba1cd3403946aaac96ce2b2ab334ee1e1969a0`

```dockerfile
```

-	Layers:
	-	`sha256:ab68f0c42f877bcfada8f046a9378583ec4a0e75b7e39e439eb46a38bdc364d1`  
		Last Modified: Wed, 19 Aug 2026 17:37:02 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2f1468d4d674504419f80c3d4dcdc8bd1bb717c0ec219916ea1dd56e77b8ba91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85916473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5724d90c6f5aae50f16fb35586b0df7dbbfa85b47f11078739f7e918e48ab13`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:04 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:04 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:37:04 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef288bc5492ed53bd9ac0679ff9ed815260d7815e1e6904f26a9fcbd9f43d6bc`  
		Last Modified: Wed, 19 Aug 2026 17:37:18 GMT  
		Size: 81.7 MB (81734613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:85cfb5d6d138452237de8bf8091049c7e0f38d65a476a5c0b87ffb91d61caf8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c60b8bbc50cedf60966e9770fe29a843d80d2dd38261688c91c989e142e8d95`

```dockerfile
```

-	Layers:
	-	`sha256:39b2f1a930624f8a42e39b13f43662072fc53ba2694a29222035ad1031183ba3`  
		Last Modified: Wed, 19 Aug 2026 17:37:15 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
