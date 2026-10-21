## `azul-zulu:26-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:d8d7155d3f48fa6e2b35a8ad2e8706ad4472e9b9065bd71b7cb531335e46976d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e0d2229dd98e86e9e05224a57ffcf6fcef1cebfc890180e17184a188311fc8eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187957408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20c61b3fa1a90bf473c7a3801f89dd0a21fd336fb201811e9dc570a8d568d6b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:18:33 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ae145904765204fbcbadb9dd0e2156d7185e0581d43df2bac6733cf4466c93`  
		Last Modified: Wed, 21 Oct 2026 21:18:51 GMT  
		Size: 184.1 MB (184105181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:09e7aa1224d806d18d1d4a6c2a99451932eda630d65b991b7f57f448676e904f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09fdfff0b8c736628d39fa538aaf6bacac093d03610ac8893aae19c059147275`

```dockerfile
```

-	Layers:
	-	`sha256:1940488d8d89b9a900d7a2faca2dc16917bb46ea9abe7520d994275e7b4e9d55`  
		Last Modified: Wed, 21 Oct 2026 21:18:48 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c7992159ee6b2cda2c7d0f8baf68ff9ee5148b544b1110c41e31c06188bba4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185833248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d892fb614ae9e5bfba8ff5a99c300a64e07fa345ef24e5a57fe248d92ffa6b7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:19:47 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012abb4e36d43201509ae13233448f49f675bbab45ffdfbb1a0bf97d954580c7`  
		Last Modified: Wed, 21 Oct 2026 21:20:06 GMT  
		Size: 181.6 MB (181643754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:601974587ffd0d4cfcbf83cd81e4fcf2a54c007d7d5250a1c61c20820b63619d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd11845334b9959ad324783542b8f032ca3c17dc3aeae48e3f4b96a1ab7fda9`

```dockerfile
```

-	Layers:
	-	`sha256:e5da51de68dfd20b7df38d1c20726895c46bb5b18f9234f99efd295255acaec2`  
		Last Modified: Wed, 21 Oct 2026 21:20:02 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
