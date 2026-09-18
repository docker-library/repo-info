## `azul-zulu:11-jre-alpine`

```console
$ docker pull azul-zulu@sha256:2d74442108d2e1ac0e0124e52592f0a93ec7cf61ba3674e4c4c082be93c4208e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0d0ffbfe01b57cbc644517c47cb3447d4ab7b047daf7c33ef2b9b0cda5ba535e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65734108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc3d53fd7e92a3c3d9c16a62ca107b69013f2e06f02de7bc128e34d1281fb9f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:16 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:38:16 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13551bdab08b44859039278a78b980337df96a972e2c65e128e5f299c2657758`  
		Last Modified: Thu, 17 Sep 2026 21:38:25 GMT  
		Size: 61.9 MB (61885601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f38cf8bdfc4bdc82fb89059344cc8ee7299dedc97c6c56a307e3efd8cdb9c4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0a2a10f7daee51cbabf3cabbbee3f1cf3b5a61d56f0fba7d7fa546aa0a2ead`

```dockerfile
```

-	Layers:
	-	`sha256:e205d2e75b1166f750547312540ce764ac27c7e92d9d3536bf514a51eb0b952a`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8f14d0938f3a134ec7b0fa8494703f05fb8b221c6fc808f457498af2fe94827b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65305039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b70688bdabbaf3242e7e77bf4a629bcd12cbe68a4da2b8f297dc647c39cd758`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:39:26 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a782f16d4cffae622a604a2a8a989abbb5ffa9e94a0ef1d58c50d93a4e6f9ee`  
		Last Modified: Thu, 17 Sep 2026 21:39:36 GMT  
		Size: 61.1 MB (61118983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c9b152d3944739c415cbf9827b93b782011cd61874501b375d6c82fa94b6d47b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78df7d9af2afb06cfaa1b42a9061d818b011d8b7729f5c6ce7daeb0bb91bf7a`

```dockerfile
```

-	Layers:
	-	`sha256:9ac890f9178a89e48fa3a00b0c6a211c9ab19d99951fc30b88b55f51acad4eb5`  
		Last Modified: Thu, 17 Sep 2026 21:39:34 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
