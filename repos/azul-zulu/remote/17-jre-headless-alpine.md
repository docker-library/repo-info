## `azul-zulu:17-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:6eed78e6c351bd85f150e3b9879b4d169ae0eab1e3257cf93b132d212ea9eda7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:092abbc63904634985ed8464a27aa4b11723534916320fc05a5dc5d316c4455a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67224879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca3220ef0e565cd2ce1da5b789efbe2ea37a3eb2f813b57e833a59277d00e20`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:39 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:39 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:15:39 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f9fd3f96c9a76c9fdba556dd83446a471ebafe198d468636afca506881bb9b`  
		Last Modified: Thu, 05 Nov 2026 19:15:50 GMT  
		Size: 63.4 MB (63372290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bb25dbb1d4bfdc9a36afa777119d77343e6bd7180adcdae9bdab6c8975537f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83163cce31c7b49da16aaf04e77d2af783f6fadf6bcf149e0b81dc89a121373b`

```dockerfile
```

-	Layers:
	-	`sha256:a614bd9e58ba747c070ed22825408c20ad768d7ba335aa18f4551a33a6cfb86d`  
		Last Modified: Thu, 05 Nov 2026 19:15:48 GMT  
		Size: 7.6 KB (7596 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4aabd1fe5cb261db9eee5255d8c37ecb9010f4fcac9ef4f92b480daa4bd9ece7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66871663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c089092d8e914a44e3482141bc5b4ec0c0923ff3ae4d9961d3ac759579b71f8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:28 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:11:28 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723cc04511f1eb9d64ec6e5e1cb29d7aac0806552b1819d4b80e542add383093`  
		Last Modified: Thu, 05 Nov 2026 19:11:41 GMT  
		Size: 62.7 MB (62681442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3f39f33a83e02b0f37856924c83828f08f004551df4eba106d2748702007a95a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f302b7f6ee088f0ea83c09aff9d6f981f20c18e4bade01c05bb1b932b775c6fe`

```dockerfile
```

-	Layers:
	-	`sha256:c0e519fbeac4b464860efaf124988b3e51d0f6ed62874fb51290aed5447d4b69`  
		Last Modified: Thu, 05 Nov 2026 19:11:38 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.in-toto+json
