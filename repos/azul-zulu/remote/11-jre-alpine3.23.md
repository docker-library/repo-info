## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:9f010dfbe455c451d2b3a53ee88305ba3315acd65678b62d0bc2a1397a87282b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b8b13b1be8e2765b9ae7259c7dad604bf4f5180fb8a3567c8c8c9e7a96ff4a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65730029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd0c6614e4bacfecba5d8ad13bf3fa9d8ee66e0040bb154e8cb1b335827964e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:46 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:46 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b52b471dd11b948fd880fd2852b8a991990a4f22500f3bcb4468cc0bb613029`  
		Last Modified: Wed, 19 Aug 2026 17:34:57 GMT  
		Size: 61.9 MB (61885608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ee972e99f45dc3bc547937adaf7b21329b45d9f747c6b66c012ce967ed1ec611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85291543e0421083037cedb244262b24f8af897fadcf2a05f6e759a76821f80b`

```dockerfile
```

-	Layers:
	-	`sha256:fda68a126d15d9ca3c8ed21a754121bb35d95bd3dc105a9141ed65fdedd820f8`  
		Last Modified: Wed, 19 Aug 2026 17:34:55 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

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

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

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
