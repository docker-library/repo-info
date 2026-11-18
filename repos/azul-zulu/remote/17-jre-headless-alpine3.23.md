## `azul-zulu:17-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:195b775bc15d3a5e12a050be52b514285830286ec03cf6c70d49ab7f30d67815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a8f6a29e11afe44877fe5e74d2a0415ec338e19226b64288af3b0ec96e6cec5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67230599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f71cbcc31d148d027490b1988476f3371a04d1396c41352b71ee0c1eddcd20`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:06 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:06 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:42:06 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3939812a747b435a77f2c4d776ade429fba2e994dccee5d525fba0fe1e35184e`  
		Last Modified: Wed, 18 Nov 2026 02:42:18 GMT  
		Size: 63.4 MB (63378010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:392c7fb38b9d5d5a79e1e01f9212bca652e794a05d7280f297da13fcfb0d056a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fcbc22617c6fd8a9c36c993cb2aeaee592d06867b59290fb2e7c7e748c8d75`

```dockerfile
```

-	Layers:
	-	`sha256:be075dafe568d854604bc76a9efc4b8ea3b4512f288e29f3c2f6ce5ed1a2ecdb`  
		Last Modified: Wed, 18 Nov 2026 02:42:16 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:44c111733afdfaab11796f042b42a74ef740724a081c4378f6c282482c541a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66893819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2a87e71ac7eeede6cb25533ed84dd3f452f0ad882c293d2db3615703bb6812`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:56 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:56 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:56 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfae1df9c62788b9be25bfa10c72f2c36d666f97e77bbf5aaf7a2eb138b4165`  
		Last Modified: Wed, 18 Nov 2026 02:42:08 GMT  
		Size: 62.7 MB (62703598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9d392a5f6408b6eec67af939818945ab9226c22c92b7d6abfabac518ffee7ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a35df4839ca825fc45c15335458a6c23c3b3c323b6b7d6945b541b76648fb2c`

```dockerfile
```

-	Layers:
	-	`sha256:6811808b6ad5760dd66edc5512b0e086f9aec27a4bbe195cebe02f27f092c9a2`  
		Last Modified: Wed, 18 Nov 2026 02:42:06 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.in-toto+json
