## `azul-zulu:26-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:822838c77d0c790b450a27332aaddfa76f25c866df97357c5da5d4b77be7e42a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:767eebfeef7d4c6a74426990671729e2b9c9a829e9d55dc98b36600710bddebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91769434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b265b477ff2db44801b7507170dfa939043570a98d4484bca277115434395b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:33 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:33 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:16:33 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ff2a7ef3ba56e7484fc82a2147bfa9a6b6a08666481cac559c1998bfe405c4`  
		Last Modified: Thu, 05 Nov 2026 19:16:47 GMT  
		Size: 87.9 MB (87916845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be205ae9b2e58fb423fe1c7a0403cbd741451b3dabea3e95e017721e2d9b6046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a42cefea758e929be032db882e126e33cd075803cdcb7ad0ac4002f47d3fc83`

```dockerfile
```

-	Layers:
	-	`sha256:ffa5dbc3d365dc2f4ce3a2da360c8953408d56e577d2b51df7cd4c02602deccc`  
		Last Modified: Thu, 05 Nov 2026 19:16:45 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fd86ab5ad85a9900a22e6aad9b30d1b5ded058011fae12098972cc53b42cb020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90916145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7521cfd8a4d39c641460588432db092c764a5430d1f159a0482eaa246598e12`
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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
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
	-	`sha256:9c1b2ff42f4c690cefd7b445bf259e38eea79bafeb167d834ec4c3e4a9b1973a`  
		Last Modified: Thu, 05 Nov 2026 19:12:46 GMT  
		Size: 86.7 MB (86725924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be911171afce6de866c2f7804ae5f429630656caa3b9927bf3a64aa74af8940c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c58f14d77d262403103d84fed415e58ee22ab4f24e007b16be173b6c661cf8`

```dockerfile
```

-	Layers:
	-	`sha256:b3d8ca247aec783c602dd93e5eee7b8b0538e2111a9858ea9df9b8458d7fac99`  
		Last Modified: Thu, 05 Nov 2026 19:12:43 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
