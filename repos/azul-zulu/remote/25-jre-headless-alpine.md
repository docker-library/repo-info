## `azul-zulu:25-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:35e7fbba3f8b94c1f7dcacc66ddcca0146493a3ea2736ef80819b1a70da01eb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:53c24ac243a48448c9e5d97b2a480d5f71d6c4cae78f9bfaee337780d34d287d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86784962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f64c90eeb415609d06f168fdbb7e9fbdf6e2baf0a17f1428b2a7ac0ceb430c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:31 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 21:18:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1925526eb3253467fc6ef40ce2b2220a2a65c61aaa86c5dad01fef667b8998de`  
		Last Modified: Wed, 21 Oct 2026 21:18:43 GMT  
		Size: 82.9 MB (82932735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ecce5837493e8d860e770b873124b2b8cfd0bd1ba0bcafa4dca941f9da59c022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5d56e7a95942bc96a5e0212e1ba1a97c5e09e27bb9d5aa95f86287f00e4d0e`

```dockerfile
```

-	Layers:
	-	`sha256:d0f5443aa14752fbf1fdb16e5ce2228d3c1c557f41a26e7ad6829eed5040d6db`  
		Last Modified: Wed, 21 Oct 2026 21:18:41 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:45c7c685d87ef6d3fa47aeb3cbabb023db27daac36089204786c3bf9db827597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85924092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba6e4ab1092b2b6057c532ddffa1217b7719a3fd53d132b55b6808ce4f89451`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 21:19:10 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deb1598c9e444798aac90aa3f27a380eaa1866a592aec83ae38caf6c8bc6147`  
		Last Modified: Wed, 21 Oct 2026 21:19:24 GMT  
		Size: 81.7 MB (81734598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d41a5fe2b1d066f7bd6273af9e16beba713ba17c6184611611728ab1278d4d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38715b5b405390d9b803266c76e6909a73fe2dd1134b60fce48e00532dc0c2fe`

```dockerfile
```

-	Layers:
	-	`sha256:5fdb839f96a0937ad92301811ca9628b90bf65e4c0d8a85677df7d489ec71558`  
		Last Modified: Wed, 21 Oct 2026 21:19:22 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
