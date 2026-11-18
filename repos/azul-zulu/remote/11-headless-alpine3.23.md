## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:f6956fcc7168309a232be3be02ec0008aec8b6dd7ed01329a354bafbcad52779
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bf6936a6bc2f2c24538290e83068bb6e975d62b25efab60b7cb8e25545fe6610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143919878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a95e4910b361687f72984d7970e967fdce393113d51163735d5742fe9d70882`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:12 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:12 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9ab23c7c6fff3b7b381f48e95570eeda08ac0d3984ea7a67efbb483a429cf3`  
		Last Modified: Wed, 18 Nov 2026 02:41:26 GMT  
		Size: 140.1 MB (140067289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1df461331eb2fbcf5a0f1def1ab1261a408829286fe286326a96ce250170976f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae426cb2e4fa1f3090b7f1fc6f1fde21cb2ff50393974898995f85822dfb01e`

```dockerfile
```

-	Layers:
	-	`sha256:74181ba7840cbe256f33557548b216674084415142be9517304d1fd97062625d`  
		Last Modified: Wed, 18 Nov 2026 02:41:23 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:89dd9ba5500315dc25c3864000d31fd1da0bb6077ef7dc0ba7755216fe60c38f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142551593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e2b5f13f4df0c91dea8c99a8d0673d8a5a7b03a4238c7610f627cc7265636a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:40:53 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:40:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722e8eac087c7145056396e146e5e2a933f6c6b325a26e766ecdeeeffb82a5e2`  
		Last Modified: Wed, 18 Nov 2026 02:41:08 GMT  
		Size: 138.4 MB (138361372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e8ce8136329481008731cb66bdcd9297650b31d5e487f2ccacba3215987dc777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea0c0208f1a59f222c3c60d8737c5611bccd427d765bce39f0f8fbb59d85ce1`

```dockerfile
```

-	Layers:
	-	`sha256:2ae68df4077851e9dd2d0d83f54067e16c261070dae8bb800a324bc1c0e9c4ae`  
		Last Modified: Wed, 18 Nov 2026 02:41:05 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
