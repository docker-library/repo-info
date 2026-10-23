## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:15b9ab9c6f4946899dc5320a6a4b959776e5bf42ce6459984f7c76f82b26e7ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a1351908583d04d178e9e0e88419103f1c5402fd11c5a6212f86067ac84384c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45557563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7426dcbb817fef9febadda91a5ade41059e7e9a9491de4d2c91d615aea660ab6`
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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r3;      java -version # buildkit
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
	-	`sha256:99f384d4889374e42e3e0bc69dd7879371324353e3015fbcdc0b10018cb7112e`  
		Last Modified: Fri, 23 Oct 2026 20:00:12 GMT  
		Size: 41.7 MB (41705336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:973424a8aacfe97cb9462c9ff528103e8d8a992b22f3fbd20cb16e77f3aedfd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b46cc887b992b6a6adb4aea9b848170a666412be1c8ad5f44821945f171e8e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e5e3b77f9df5c7f2854ec30b51f35fcfc6e811c2218501b3b2d1ee63a095b91`  
		Last Modified: Fri, 23 Oct 2026 20:00:09 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f0d9735e4820dbc7a82edd05a7b69e3f2907cedf6b58d4dcb87905d99e225d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45618432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135340aecd25b27dca7a97eb2451b85ea81b751990d9c7b9fcefb8988f2fd50e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:58:44 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:44 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd94fcf00d56b0ceee342229de4a09f456da44b65dca2176a39c66561a32077`  
		Last Modified: Fri, 23 Oct 2026 19:58:51 GMT  
		Size: 41.4 MB (41428938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8c5dca7caddfc96c17a973cdd877d4e36b9b33465edfd024771c55f6a0a7ef60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb693b4ac4b36aca2ea85a3c903ce1e2218b325761f7e114b25e78926ae4eb7`

```dockerfile
```

-	Layers:
	-	`sha256:5b82f14572e48861d9d44cce28ee713c96eb70177843684591f4e86d46a50dc0`  
		Last Modified: Fri, 23 Oct 2026 19:58:50 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
