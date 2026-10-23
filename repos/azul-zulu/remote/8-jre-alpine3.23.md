## `azul-zulu:8-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:39b4bb6aff0451fff3541a6c1afc169e5647a651cd93f7e046585366ecfd2c6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c5dc7b1f6647c3776896fbb74916fc9bc4b40022c981d131dfeab5468b67bfe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47980245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc2520a079370cb0c6853a20a6696d48d1aabc4e9ee48f6ce65ab427baed1f9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:59:57 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:59:57 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60aed02b23e2e93286de1742b8d8bb0a03e77a35ba22fb83bcf1e8b8dbfab36f`  
		Last Modified: Fri, 23 Oct 2026 20:00:10 GMT  
		Size: 44.1 MB (44128018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:22368838ac98f1365faf5385d387fec2a8d92adaa69ec0c57d9976cebb585529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea7bd49601d1199d80bac4dfabc8badd1736c7844a1ac6f10e6a1acd78e44e1`

```dockerfile
```

-	Layers:
	-	`sha256:24d0fea65e9e13ee7ea1fbb061d5cb3d9fa8e73bc69a8f6d1c76a3254e9d837b`  
		Last Modified: Fri, 23 Oct 2026 20:00:08 GMT  
		Size: 7.5 KB (7472 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8528ead3b552e0e738603b98ac12fc9ea310ecb9ff720d8ebcf9f4e9322b1491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48071097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46ff7869a4f1aa2b23f78ae46a2d7f94ab61121e5b9121c4898f6ab3d49324f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:58:38 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:38 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2a98b33da281752c797cf038bc61bcdf973b9b13b533f76895eacab6707dea`  
		Last Modified: Fri, 23 Oct 2026 19:58:47 GMT  
		Size: 43.9 MB (43881603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d1300484d267ee8d43034cf3dfed13f335aa4a415befbcaffbf9d8b0678c5476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62f42e490b394f7e569324a41518fdb43f27cf5ce888e2162354b325f8c9f4d`

```dockerfile
```

-	Layers:
	-	`sha256:47a2348859969e659bc1628d584aa59dcb506a854ebf77d64c749e5a4cedddd2`  
		Last Modified: Fri, 23 Oct 2026 19:58:45 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json
