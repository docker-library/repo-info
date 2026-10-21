## `azul-zulu:21-headless-alpine`

```console
$ docker pull azul-zulu@sha256:b90e5bccb4d2e731d2c933e860f16be061156d1546af92140ca8518699b5d74b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d8fa7b9c4bdac075dfdcefc102336bb2a8e0f14da3b2019cd5c68976588d5be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161057980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8faf05b2f53553f68f04a6a9b5409faf438f05684017dc9dc69759704ab29f6c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:18:07 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd3c9b45cf00875f502d8891e21493fc4869bc0079708c954fdb125d39f2fe`  
		Last Modified: Wed, 21 Oct 2026 21:18:22 GMT  
		Size: 157.2 MB (157205753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fcf8ade63f756a0f5e376d7acce29c6baa1019a4e299425a0947fe86d0527cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc58f7e569afddab2988515ea9accbfc765a049365177c74a858c901a163db5a`

```dockerfile
```

-	Layers:
	-	`sha256:683cd2df4e9878f89c6b41b21a855810ae79086a3f615b226b982755e6dccbc5`  
		Last Modified: Wed, 21 Oct 2026 21:18:18 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ce1291da110128501da14c5b1af68ad30deaa79c0b8e89bd6ed7d1cfc7c447b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159602790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4f46138739b3f626c0210a56c13e509e36515fb207e3c0ddb97bc0d2962932`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:46 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:18:46 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7e55a3684fbe8c225f5ff4ab81f2116631da5af4dee70ed18229d24c7b1239`  
		Last Modified: Wed, 21 Oct 2026 21:19:03 GMT  
		Size: 155.4 MB (155413296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e8c4b506d69d86edbab9c790f10686c0aacccae8e913a5c35c3acf992fd3b395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b3fb19d9d749d7e95f37cab3ae1cc788f1e2799aea0aea0edbf62bb5a4a5b9`

```dockerfile
```

-	Layers:
	-	`sha256:ba585683b9a32d9bdac74173a4625f7100cc08b76d8efc19d0dbbf28cbdfd8f1`  
		Last Modified: Wed, 21 Oct 2026 21:19:00 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
