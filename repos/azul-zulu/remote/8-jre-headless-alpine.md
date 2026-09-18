## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:cb27d38b6c53866bd8b374d1c8fc1943257d6aee71a9a85425fd9623fdf53ee4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e1de91cbf0e7e5c423a8110a8b5a43ac560d76b95fa19a762cacdc715c7dd67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45532458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5ff44db6d6220369d88634f65fcafa3073b8e86e7210feffd964fecbbe839c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:05 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:05 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 17 Sep 2026 21:38:05 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128088b43199e8731c483c3dc58523330399b96e2d18fd59759d4826d900de40`  
		Last Modified: Thu, 17 Sep 2026 21:38:13 GMT  
		Size: 41.7 MB (41683951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:38b14face1e7dfe864c980c526d1fc640739e02c4a9681e360a5b5288834f3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a724dfc6d5963a7b4b22d3f15ae9322f26575c609fb15e993ee6c8732f8cda23`

```dockerfile
```

-	Layers:
	-	`sha256:51a22dbb2dd582c494525b8c875ed868b53ea9d352667dbb45b9b22551e98569`  
		Last Modified: Thu, 17 Sep 2026 21:38:11 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7532d969f1fb902746d82cf5453e3b3382a1cdf6fa79f6f0ce934003ec9ec749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45598411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41736e9e94cfc1453bf83dac9b2d1c5c66446ef987fbc03b59bd64323267cd81`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:10 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:10 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 17 Sep 2026 21:39:10 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319524ac4060b0f6106d5e7363426cbbb2b9decfbab253a3029751e5e53acbdf`  
		Last Modified: Thu, 17 Sep 2026 21:39:18 GMT  
		Size: 41.4 MB (41412355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:46fb98aff8f213223bca167aadec75602d75fa5d9a2a4fc5708460c5f4a0b63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cbfc057fd190fe7cbf53c9d1a1376a63391eb16602a4c8fd9fe0d556be122d`

```dockerfile
```

-	Layers:
	-	`sha256:956c10da0aebf19d58a3c66d8f7bff65eae632250a5f63a7637c80ba329313ad`  
		Last Modified: Thu, 17 Sep 2026 21:39:17 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
