## `azul-zulu:27-headless-alpine`

```console
$ docker pull azul-zulu@sha256:36cda2ee6c000a763f71ed21f3ccb79e445df2407da8db6be3d8c57fd03c7cfc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9f8fe87c67f61f939b35acf03fbf5f53b4158fe18a6b26a7466658c6d232972f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183093005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b609704f0862e7ff2d90d9ac03fa475d7ea24be02dbfeef5232eceb69675ce5d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:48 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c7f7d2174f2021eca4fc85bf0e3eed48e5ffddeb2a62f334386bbbd1415015`  
		Last Modified: Wed, 18 Nov 2026 02:44:06 GMT  
		Size: 179.2 MB (179240416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:56d516cb835ee4041b7e24be63f788829e8877a24e2c0c9541e28e4e399d9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a346646ba992b890d127605b75c3a2cc561f90997dbb52adafe18addafe466ca`

```dockerfile
```

-	Layers:
	-	`sha256:cdfc9de927c7327d942e2542edf9d5297d98b27ccf75b9033beeb0d46386d3da`  
		Last Modified: Wed, 18 Nov 2026 02:44:01 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:640879744fd1e4d67b7120a9810b521badb601e6d1f862f2663c4959260d023b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181014164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcde8e1f6175ccaa3d6b5064e624d034ac78f889ca564694a920e1696e8799`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:45 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb7d4340a5262cb047ac4e3154c768a7c25e2589a346767767e7d6a1d237a37`  
		Last Modified: Wed, 18 Nov 2026 02:44:04 GMT  
		Size: 176.8 MB (176823943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:659478cb0a5d89b3aff1ca07468b603d80b18aea91953423a955017b7d72f974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdfe7dd25917619a48a538fb1233bcc8eb24bb21899cb3249ff3c4ebb453f1c`

```dockerfile
```

-	Layers:
	-	`sha256:643928ccdf5840a07cbedbb8b08187918ee8ae8222e06255a4bfdfa1249c97fc`  
		Last Modified: Wed, 18 Nov 2026 02:44:00 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
