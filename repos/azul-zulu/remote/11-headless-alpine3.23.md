## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:8a0b06e077e613d1ff13bc221adc63f9f53abfa62dc3e0dacbf4352d06f426a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fddf7ff0e8645dd18da977f95c88560b1bb2dfe3e44ff2bc1884dfbde2ce3bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143905810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280d0fa98185254dad940aad7e918505c12bb29e6cbb1b41d4b2fe11b0a3254e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:16 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 19:15:16 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4808abb61f4a28d5f2c951c4117d8b385aee348132da3cb4926b87756033aca1`  
		Last Modified: Thu, 05 Nov 2026 19:15:31 GMT  
		Size: 140.1 MB (140053221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5b81ed328ca63d844c151fd751d11df47359ac92ec9aebd7ea33a6acad26083f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02b5cfefe64726bfa611c6725bc8d7d12c2293dbed9949be30d62d0ac5a5fe9`

```dockerfile
```

-	Layers:
	-	`sha256:060e31a5350cd12affe0d88329f4e22d81bc5ff21b02c440ec93b9bb648c33a0`  
		Last Modified: Thu, 05 Nov 2026 19:15:27 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:80b7614033de7dc0e66b8ab72eabbdf7f18ccfc661cd8229515490c811241599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142539155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc9d4d8ff7661f92ac2d822d9911cdf780ebe8f9d8fec3d10f21172ac2a46b7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:06 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:06 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 19:11:06 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:11:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939a651f27b8dad07d845eb9d5f0b2ab0d7b561311ed49699ef8c825e16ce86a`  
		Last Modified: Thu, 05 Nov 2026 19:11:21 GMT  
		Size: 138.3 MB (138348934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fab44d7f5731af238339333fa6fbda27b9f8e38d00097e971a9e292f7d7dc9dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac88b246de164f4d7375bc6a48de1d2598f2d25f7a609d083654ed5ca46e71e`

```dockerfile
```

-	Layers:
	-	`sha256:d20debcee07c1705bb1b1bf585dbbd853355f08abe71145ff0badcde737f13d9`  
		Last Modified: Thu, 05 Nov 2026 19:11:18 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.in-toto+json
