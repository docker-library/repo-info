## `azul-zulu:26-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:de856815d7a29832cd4b63800b3a6ed2c811d683ccd4fcdb97e990e121c9263f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:79a326ca1e62ca54670c899dd1e765cf090f9cbe1776214bdd535b8b5f3cf873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184968043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24444f468bd644f9faaa986e4f4c6eb1bb6563db2a0ce8adf613ae33ea3a1145`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:27 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:16:27 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:16:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e855d48f2682a1faf5ef894f8fea5646b86671a78f341267e7eddbf2628f89e`  
		Last Modified: Thu, 05 Nov 2026 19:16:43 GMT  
		Size: 181.1 MB (181115454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7db4b1870822dfb727e393f908bfb9d208536b6d8a424337fa561d6c4a7279df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1f195fe3e5d9b5c5461a1358bcd93a4d869cfd9b344aa8c455fcb4137383b4`

```dockerfile
```

-	Layers:
	-	`sha256:21c6ab18cbe6377615cfd440b412f624fce0d6986d960d0dedae774f6287a48c`  
		Last Modified: Thu, 05 Nov 2026 19:16:39 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:68bc1c68293541378ea2aaf62b40aaafd9eda2fd869d3d027c81719b62b82ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182809808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3256716703fbdea6ad160d432c29a76f9e9888f85fa6a7f0e324c185623136`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:12:19 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89337c8d614adf6421f53bdf3f166cfd1b140116043eb722d4b2a82462afe30d`  
		Last Modified: Thu, 05 Nov 2026 19:12:37 GMT  
		Size: 178.6 MB (178619587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:933b58a95c231d3cb28d5bb2dd79884862718d1fb027dc3fd8f68c3996a24e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7363bf290b1b7ce211651791b7f73c03dd2ef2fdf8588f67109dc46662c8d4c6`

```dockerfile
```

-	Layers:
	-	`sha256:f5e94983e919f6fb74c9ea42358001b2c4b67a67387160489d5744d94a87e4f3`  
		Last Modified: Thu, 05 Nov 2026 19:12:34 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
