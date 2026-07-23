## `azul-zulu:21-jre-alpine`

```console
$ docker pull azul-zulu@sha256:0fe3ab4330d728ccb13453dcabe829c0bfe034d46e3714c4b4cbdfe6ec69c712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a52050ae5759d8b022045b292f7515ba4a6acc274ef38cd24a32cf27b853a2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75291013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02899e37b23972cd12d1a4c3ffcc13120663ac495d285bd62e141ceee2ef9cc0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:29:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae40ee2eb1855c20722880b4d280b14ec20f8196af13b8dec7b93440e3727f6`  
		Last Modified: Thu, 23 Jul 2026 22:30:04 GMT  
		Size: 71.4 MB (71446592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:49bdc5e035e7357058aad17aed51ba39583cf3b04c169216970006873099826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d603e9bea8b1666c01c3da4340ed3370c5f7fa75ae48fdd1ca03216b6d9418d2`

```dockerfile
```

-	Layers:
	-	`sha256:3b2791de00748b1aa9a8d239fb47fbc36c59b976dae2605202d9b071e0cf0143`  
		Last Modified: Thu, 23 Jul 2026 22:30:02 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c5921a80a33a85193f942ad55c7cb146d134c6303552b869741a699b14ab950a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74862872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06b9c4e74670ae3f971cbfa83955e7e269ab8a5be3978d15d89eae0c09b01c9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:57 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:30:57 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3486ebf399658d6de967d013cd430238c7cbf364e8ba0d4170498d94e98fea4`  
		Last Modified: Thu, 23 Jul 2026 22:31:09 GMT  
		Size: 70.7 MB (70681012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c4a4c8065530aa941654a71fd72c2df8d4964acedd2bcee103f3d4388c769dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef979ae03d1cfb20c3a1a200571b5673a7eb098e64a44901da31e68d00e6646`

```dockerfile
```

-	Layers:
	-	`sha256:ce891d4fbefa978edda7b74711a300a983051d9688326bafaec10da7a19748cd`  
		Last Modified: Thu, 23 Jul 2026 22:31:07 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
