## `azul-zulu:8-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:b79b42eac8a4501cb1c7fae0bf206229df7e068ecba22370d247326f6f26a85c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c5db0e3bb6c723e1c23777318da6e2edc814b6753dadec2b03237a2a12d466fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45558058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37410bf7dd7a584e8b2d8ff1f6cfba6777c8c017e2c629b057ded7475862a84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 05 Nov 2026 19:15:07 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2c3eecbf616c7c4761c2caa50918c810b4e3cf3da6aece7a5c9a665f340e3e`  
		Last Modified: Thu, 05 Nov 2026 19:15:15 GMT  
		Size: 41.7 MB (41705469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:02d7ed072d4a358f09c13a30c18f4b9dbb8c1957bdc5f9dbc4d66a8c6474fd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3013e99e6c6d3a8e58612c0b1d4d2a7d1e0a0d3b1e9deb5152ff9784a6a6f833`

```dockerfile
```

-	Layers:
	-	`sha256:50a9851a7682d2250a921809f1287adcda56d8e43f39376087f0baaa2c97f2ab`  
		Last Modified: Thu, 05 Nov 2026 19:15:14 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cb2085d6062bb3a8c6918630d223dfa96393ab2d25d4501aff7093cd989e974d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45619296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117734acb249c12f9087a9c097e679a00c844b8fa1fd5ba4929ba8b7b2910c46`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:50 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:10:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 05 Nov 2026 19:10:50 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3d8139c903c8a10764c13a00136ee5996169780d36e5dd0e77dabc596d29b3`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 41.4 MB (41429075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dabd9c973a6d630afbd64346c0a4755f38672a2121d11a3348207c6db9663e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d22d28892c2ef010f9bd49a2ab245ccb5513fb8638f71d42f0a0e59d1170645`

```dockerfile
```

-	Layers:
	-	`sha256:7717acfee4c151bd10b95c756bcf2aeac8dda8ef72c0a94217da316961713c6e`  
		Last Modified: Thu, 05 Nov 2026 19:10:57 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
