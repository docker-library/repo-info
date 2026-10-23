## `azul-zulu:11-jre-alpine`

```console
$ docker pull azul-zulu@sha256:9e05d3c4118ac390f8370746bbd74762cef19f88204c7cbe83e80344cb693775
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:30b25ef5cd5ec153a5db8afd0cbeb19a40a2cc1bdcfef379a5c3be4b52be36b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65787241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321b6f63257a55735cf9cc77f38b38c0ff50faa2da5e6b9ed5d05442c5fdc56e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:34 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:34 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd15ae69c1b8944ce1efefaa8987b4c7398e1d9cffa588077712397802e411b3`  
		Last Modified: Fri, 23 Oct 2026 20:00:45 GMT  
		Size: 61.9 MB (61935014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:61616d59d8eaf8605668ffbe68f6a162004c91b73a98321b08fc9782a6e90ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df25b2f941ea0dc3df0b9ab8b0a4865b3257105aa29b09e6e719845d53cc6579`

```dockerfile
```

-	Layers:
	-	`sha256:0d84c4fff518a4c462bff9a0e7c3e8dfd696912e1efab7570ba290213f42674d`  
		Last Modified: Fri, 23 Oct 2026 20:00:42 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8b2a52bf770664ce0408734ffc823f0a06cb00b78921eaeb39e0c9de210dacda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65357521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b442b65550f2363bdada3f5e39fe117ec91585271c58f4aa4d0a7f2b7053eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:02:01 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1126680eda091a347c6dc2279e479cc7b0de4be329b0d6b61fbf0fc4ee1ea04f`  
		Last Modified: Fri, 23 Oct 2026 20:02:11 GMT  
		Size: 61.2 MB (61168027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b7cfc3498c3bb6b25d351765d0fc7667303ff01528f8199f67c06c268eb84e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6d04e2111a28f2afcb8145dbded65cf514eef66005786205e9d9a3a5089f47`

```dockerfile
```

-	Layers:
	-	`sha256:efed5b9a373799a4a53c11e2f15f35ce601bc4e5e385e8949ea97a9e6d6500fc`  
		Last Modified: Fri, 23 Oct 2026 20:02:10 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
