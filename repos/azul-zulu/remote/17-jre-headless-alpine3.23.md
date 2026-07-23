## `azul-zulu:17-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:e0ada0073e83ed4acbfb101ab6003fe71979403179c6df97db6dcd357833f176
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3292d95c8505ba36519453f9a6e7d8238fcd7157800f078a1c1c9bb8f25786a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67066786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4ac68e0a58e837401cf057a63329f3a1c2d835de9cd565b0b1b19cfe3e570e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:17 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:17 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:17 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a3ef53532b3b2494bd7f907942c6673a14deb02297893e97c506bc95a9e3f`  
		Last Modified: Thu, 23 Jul 2026 22:29:29 GMT  
		Size: 63.2 MB (63222365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2b61176d736857ce3ef7c2f18406f7754488c6eab1d7bae2ab39675eef3e3bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93ecb96bd4635e4d840577f688ec08c6631afe187afd6a86e4c575831266d1e`

```dockerfile
```

-	Layers:
	-	`sha256:ea0adcfd4973b7ab71ef7c638c2b8e43fac86ff54f4913b6241066dda307cd89`  
		Last Modified: Thu, 23 Jul 2026 22:29:27 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ed8b3f172c14e099f48ebdd57d08491c5d6a7ca27ac11ab2408479276f711ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66690360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ca6da39e971139078fb095ba9911608ffd6529a6cd6b90e518eca85c110c6d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:30:14 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95292ebac6c5afe61982a789f3551eb8fbae0b9ff10cdd29b52abf3304b77628`  
		Last Modified: Thu, 23 Jul 2026 22:30:25 GMT  
		Size: 62.5 MB (62508500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4134ff37252702d21e8f6f5cd2cce2558d04d4b5142df52856f00571472087ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ea943a9c07cdee95ea2fedb056b09fea0a37e4a61542cf99b932e4230b145b`

```dockerfile
```

-	Layers:
	-	`sha256:b2c5abe3fbc52319baf6f5cb8905a65e9369acca1e8b7a1dc8cf9fe708269d3a`  
		Last Modified: Thu, 23 Jul 2026 22:30:23 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json
