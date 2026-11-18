## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:8be0a5e7f681b03a75b2ecaede9ac6b7e55681c23223421fdbae6827d4caaaa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:262bf4002abda3e1b8780ca6544ca7ac5ff9f381ffa491b415ce5ba79b28c7e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65792132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc8be353408c532b3283b4aff6001260767ddb79962f7ba504c33777a9398cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:15 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:15 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db976e9678e1790f077f7e617c33429b823078ce387cda4a0ea49c9aa5ea70f2`  
		Last Modified: Wed, 18 Nov 2026 02:41:25 GMT  
		Size: 61.9 MB (61939543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9c92887657bde52dc156fbdf5b7c4a4ee08c7916a6f26b2473ebdd1e41245006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d10a2fb28c8a48a9b3861d4c552c33c232b4ff110b0265e26fca418235997ca`

```dockerfile
```

-	Layers:
	-	`sha256:05a07df91c2de20e16b54d27b154915585c7eded87eadd22c4592b51bcbb6c6b`  
		Last Modified: Wed, 18 Nov 2026 02:41:24 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:042e13bad9fae700cfe2ed4bfc429a1f4abc2a05b775af095c74127bc38b326d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65368685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051476bc238f16d0b4b338ef69395c5ad5035a6c35ed21f991cb064c94bbb7c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:10 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:10 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432f2f4da30a85b87ba25f7c3b7f5a9f40416ea4b24e38fb50c483abf610ab51`  
		Last Modified: Wed, 18 Nov 2026 02:41:20 GMT  
		Size: 61.2 MB (61178464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8b3b45b6254c7b3f92347b128493088c7123bb6ab45044086212310ca61e614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac75a0b36968a3ba7c34c8a5303e20a506b555f09115723cfe3a9b70acb1f042`

```dockerfile
```

-	Layers:
	-	`sha256:70a7176e6d7f861a3606fd669d1552517c6d52930c11f66412e18b9f0c536507`  
		Last Modified: Wed, 18 Nov 2026 02:41:18 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
