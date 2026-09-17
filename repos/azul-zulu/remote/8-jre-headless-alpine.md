## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:784ef0e18c0c03e0edc3e97e1dd295bf432d39d8cf74023bb4b76c2f54049fd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:047433b8218bf302d1ed7c4e5877927ba4ff39c82c169060e0138f517f266d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45528353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89183d3adacc767488ea27ebb58656ab7914d4764a0849c129fba84b9229c404`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:21 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:21 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:21 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c5089b6ef08bae42e41ec7d93e885c07c5f56ddded7e480d68847e141f8c87`  
		Last Modified: Wed, 19 Aug 2026 17:34:29 GMT  
		Size: 41.7 MB (41683932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b14c1dcc36861223de76c1a185d7064b4dd959f38b9cecd5449f4b4f414d62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f24baded23ffe9e363c21e09a21202eeaa62d671804b1b5499255f9152c2711`

```dockerfile
```

-	Layers:
	-	`sha256:19eed440f68741caae2e4d0ecbf9758f7b9d60a78d511c9c243c5c9e642f4732`  
		Last Modified: Wed, 19 Aug 2026 17:34:28 GMT  
		Size: 7.6 KB (7566 bytes)  
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
