## `azul-zulu:8-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a8c405f94b3f3a309f6c633b93bbcdda2b8a0b3cee26075058bdcb579f78ab2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:24b556db1e2dfd99156355f30fb33ccb1e6c56ec96fd0f571df34fd5704d32e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59806054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbdc67d6c6216504550f7779cc59d62f94495a3b2f855ea72724ea76fc4d4a8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:47 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.514-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:47 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d83c5ec3a944d781919ca410f00fbc62af44af2f71458df190a00fa1992c6d2`  
		Last Modified: Wed, 18 Nov 2026 02:40:56 GMT  
		Size: 56.0 MB (55953465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5f800c1bd9920eca4e50da541c858181036c6e9d360331ea0888c358e6cbba9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1777a339723d1a92d6758a0c119f55c03f597f5f9fd9201c737de2d839e93a3b`

```dockerfile
```

-	Layers:
	-	`sha256:9066004d5d2922c8d8bc5224ab5bff4a5abb683dd5e223356c721677a059a71a`  
		Last Modified: Wed, 18 Nov 2026 02:40:54 GMT  
		Size: 7.8 KB (7790 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:16da172ddefaf197fd6188d9783a042ec27c5d4f0d6558eb8b2d20ee827502f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59901752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f805c0c78f466ee5566d74ff8e1e112a483a3f3ce13b1d61ef392d2553986e`
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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.514-r1;      java -version # buildkit
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
	-	`sha256:13956a49790c735eee5a8bb7edb4ffd5b15a8e1ceede63d6eb28de7160253d2e`  
		Last Modified: Wed, 18 Nov 2026 02:40:41 GMT  
		Size: 55.7 MB (55711531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cf2763cea36f03437aa8f6ce6b3e041177044cba8a5b16180e9cfcca31605525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04776f2bcb31bfa5e9b34cd95f8c8452d787236d3e6b2a3e101e13ecc4a3eeb7`

```dockerfile
```

-	Layers:
	-	`sha256:6cc306dce2832ffa94fa0360a3f90d5b1f648a6f0e89c7a15065b854ee24ff1e`  
		Last Modified: Wed, 18 Nov 2026 02:40:40 GMT  
		Size: 7.9 KB (7893 bytes)  
		MIME: application/vnd.in-toto+json
