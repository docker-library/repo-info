## `azul-zulu:26-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:cd234929232a8d262c4610f9341be206e24985cc035d4614b1d718e4e6506abd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b66aaee6a533c892d9d67b46a6abccc88a0dbdf05ee99f7cd1c0e52ca3603e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88767495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4df0eebc700dbafa66110db703e073ff33c12e3f7c8e96c796afbf2b66ad956`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:36 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:16:36 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1963dd1812603fd5d0288970bbbffd3d5e239818f19930f041e1aac847ad0edd`  
		Last Modified: Thu, 05 Nov 2026 19:16:50 GMT  
		Size: 84.9 MB (84914906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8fdccee13ed374c17d302c7c36963f8b272c92f56b6af801850fe29221f2bf20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0f915da028614f828a82a03f18798c0df31c720efe922f5b65db4fe2a6669d`

```dockerfile
```

-	Layers:
	-	`sha256:28a9dd4d30fcf13f86f8cef5b8660e1e348c9c524b455a53bcdb4aa7b5edda98`  
		Last Modified: Thu, 05 Nov 2026 19:16:47 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8bb444726b99d4d1f9107f8b2db915c495d438edb38c59fc96e75841d11a2308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87896983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae56503cb2e18ce05638bdc9c1c3b4479bbaa67ed90ea75658ca4c0a0d2042b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:31 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:31 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:12:31 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b727f9cd9e683852fde01c35a0167357976053aeed1aab4a937672d7a65ce0b4`  
		Last Modified: Thu, 05 Nov 2026 19:12:45 GMT  
		Size: 83.7 MB (83706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4eb1fc4d19b718ff8bfaf4d4e4b112d7bdb962cda1975f80a995785b2c2a6d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8bad35d5c27194be85fd924408025e9033adbde417354882c7f31fd622e1b2`

```dockerfile
```

-	Layers:
	-	`sha256:483cec7f1ee7041fb0dcfffa0f01cd9d2120ae5956293af4094bfb44b34ca311`  
		Last Modified: Thu, 05 Nov 2026 19:12:43 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
