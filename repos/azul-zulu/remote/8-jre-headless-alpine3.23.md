## `azul-zulu:8-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:3b25237ba82f0b324529bc9d5dadda62eed1f1a9688825fdced5577f4cdad550
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:047433b8218bf302d1ed7c4e5877927ba4ff39c82c169060e0138f517f266d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45528353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89183d3adacc767488ea27ebb58656ab7914d4764a0849c129fba84b9229c404`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:21 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:21 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:21 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c5089b6ef08bae42e41ec7d93e885c07c5f56ddded7e480d68847e141f8c87`  
		Last Modified: Wed, 19 Aug 2026 17:34:29 GMT  
		Size: 41.7 MB (41683932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b14c1dcc36861223de76c1a185d7064b4dd959f38b9cecd5449f4b4f414d62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f24baded23ffe9e363c21e09a21202eeaa62d671804b1b5499255f9152c2711`

```dockerfile
```

-	Layers:
	-	`sha256:19eed440f68741caae2e4d0ecbf9758f7b9d60a78d511c9c243c5c9e642f4732`  
		Last Modified: Wed, 19 Aug 2026 17:34:28 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d89f19cf40f2209d7668f1abed5e463b2feffe8f18af45d9db53d9eed6c97d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45594247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7359777a70643db0271e3c8879a4886807b63b98b47f81fa006acc768008ec4e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:06 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:06 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:06 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d9b70a15f153c192746538744aa959dd0ec88e0c6bed06c58cad919ad485c7`  
		Last Modified: Wed, 19 Aug 2026 17:34:14 GMT  
		Size: 41.4 MB (41412387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a7fa82952563ffe72e276886dd8da47e1e050e7ee02fa037c04ff6381af32082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1954858455c941ce1c7c667bc7587a9f492411d48f1ccf42665eb4b2009ad531`

```dockerfile
```

-	Layers:
	-	`sha256:812bb1ec611a900c5108328f16836a9b8e9c7990cfeaf22230b9428030e02a91`  
		Last Modified: Wed, 19 Aug 2026 17:34:12 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
