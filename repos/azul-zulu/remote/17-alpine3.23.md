## `azul-zulu:17-alpine3.23`

```console
$ docker pull azul-zulu@sha256:f07e0eff3998259c90750741dec985645cca4d1f5a5c8c3c8dab997f0a5621ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9675eb7a541633e525d2ee7e8dc8a51fe9b2d4a45ad61171e23e4c5b58f7a0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151466422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d087946fc7d91d29560d2eb7b4eca9d828d3645ea3ca3f4fbb22d1f8c851dca`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:44 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:44 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3866952740fa1aa6aab7f0e2847d08a9418c95511ecb6665075b9c0e9f43171`  
		Last Modified: Wed, 18 Nov 2026 02:41:59 GMT  
		Size: 147.6 MB (147613833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ba7f0ccc67bf29c57b6db5f7f3356e20e273db3f50cb1090bf1d0543b0be7f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54f63bd732df3cc4f5f9cce8fae4eb7e79403022728e28849746821f4ed5bf9`

```dockerfile
```

-	Layers:
	-	`sha256:a4f231320578e2f4d0edeb50148c6560e87b8ddebf6c2d508088902a7667bf35`  
		Last Modified: Wed, 18 Nov 2026 02:41:55 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:88fadaa1aad5d0449d1ca284a3f3f00eda755b1eb479728f9de8b5c5dde03e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150307907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa06be6a332037fe6721d887decbaa03f88589fe21787ae8ac27b827be7289f4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:32 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d4e4e946864c57e8828bf59fddd0bce9db81c6d4431b4b663eff367ea2cfcd`  
		Last Modified: Wed, 18 Nov 2026 02:41:48 GMT  
		Size: 146.1 MB (146117686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:72b3ea728c3604d5a87f8086b62620d9ec648c7b0282cb4476ead0183aa94c09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05287cf139c08871a47793bd3f70deae162a31aafc1d2a5ad2b4ee8b8cdea612`

```dockerfile
```

-	Layers:
	-	`sha256:54dc9400a1c94ac873b85000c19a5c212940ee4e99b60e1feb6bb12c02f0a052`  
		Last Modified: Wed, 18 Nov 2026 02:41:44 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
