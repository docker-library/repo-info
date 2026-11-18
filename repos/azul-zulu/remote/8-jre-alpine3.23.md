## `azul-zulu:8-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2569969bc47084ba9d2e338c6075e9a16399b8f668e7af9442282b9c4fe6a633
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:af02259ee0bf57ab3b17e8f9c2aed1a6492ce9fa414c2ae154b33e4e5a51eb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47990471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69f442600a36de60bee3683684b712b19c9a493af511943795f3ba8213b3503`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:54 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.514-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:54 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18b6fadcac67742cc8beaa255354aaebb2a1a29caab78a8c147c599651a616a`  
		Last Modified: Wed, 18 Nov 2026 02:41:02 GMT  
		Size: 44.1 MB (44137882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e316f6ba883f3afd8760f851c8e0fbe917817842185bae597f2a963a61a08af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2fdc5813a840afc90e70d9fd5e8042285b10f9021351d5687c39f848ca2b8a`

```dockerfile
```

-	Layers:
	-	`sha256:25cf806c6b55e5e87657adf09b5c0edb439f8ce4e901b817c9ae3a5dc1c5216a`  
		Last Modified: Wed, 18 Nov 2026 02:41:01 GMT  
		Size: 7.5 KB (7474 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:13af569c46ff764fb062d50ef8df0d29e86ff8e6ec47cc69786c280b3f491f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48081403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0125750049ad185bd135a1d78f2728e9d222d82f9d33739ee5dd6d37f24f2e11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.514-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:32 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f88ba1f344da0f9a68b56ff4587919fd6e0b850f40840ef887a4b5aa8ac4ebc`  
		Last Modified: Wed, 18 Nov 2026 02:40:40 GMT  
		Size: 43.9 MB (43891182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf1981b39d39b77dfc34b7dcd08bdde968860cc889c3e773b77192ea6c2e1e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fbc34f3be0975e624f402219ca43edd940f9c575e65a8456547c064101a74d`

```dockerfile
```

-	Layers:
	-	`sha256:eec36ea5e01dbaab89b07e2a542143d15658f16539d2256f7178850bda68e677`  
		Last Modified: Wed, 18 Nov 2026 02:40:39 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json
