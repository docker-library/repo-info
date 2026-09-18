## `azul-zulu:25-jre-alpine`

```console
$ docker pull azul-zulu@sha256:cddbcd1a61eac21e418807920ed2cd046fd4684069a5866cda8c6cb911eda01e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:354d032ac2c722cc55f639d3889a78b569c8178659cef9b3899527b9ff2bf625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89795114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca754b7617128af9efcb480de4543c9fad89c8de69077bbc5c097844e248c1f3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:04 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:39:04 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873aaa9b99f4d3e55f7581f92d586d84607ea3c4b359cd60881c1c5d11da2d9c`  
		Last Modified: Thu, 17 Sep 2026 21:39:18 GMT  
		Size: 85.9 MB (85946607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5a104d0409e84f0e34be1cfa1a5ab40dede7941bc3fa1dc8bd061a81cf1464a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ca200e2a0ab48cbe7742085da1884a59439dd5aca66ef2aeb0023136ac6b93`

```dockerfile
```

-	Layers:
	-	`sha256:ffd930fb6d3fc81b5d096568c6f045a0557c2c77589d008ea3ec79e75cd0defc`  
		Last Modified: Thu, 17 Sep 2026 21:39:15 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a663d7d299a2d767f5053a0cbe28767b9688021c89cf9b7e6c72fa1f3ece595f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88970606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354a2ccb15d2436213c759a79d254ce58a655eb690f631b1e1ce254939120a74`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:15 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:15 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:40:15 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1735fb6e3d537e79a4d027c214ac8d97c6d205096ed1e8519823b045ce4a8`  
		Last Modified: Thu, 17 Sep 2026 21:40:29 GMT  
		Size: 84.8 MB (84784550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:efe828c30a467efe6f1ec6a7c9ad025392f1a9cd472ed01d7d4b81cb895d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b092557511bea7d6d83aff32fdd9749be1634f21b9e4872ada8f52888ffaa7`

```dockerfile
```

-	Layers:
	-	`sha256:5f4d0c2b1f5a39f4c59839aa9aba2391f063f9f8b8b96cd931480dff01472b75`  
		Last Modified: Thu, 17 Sep 2026 21:40:27 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
