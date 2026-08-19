## `azul-zulu:21-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:88fce7a0e17d2fe2f0b1962180771b7baaac79e86e732e8200a1fcb694e1db32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2269a08e58b6e10e3044f5ce81596108173d3e6c76756b4db79333f814cfe2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75292380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a831b112ecadca99a0f671b289392244f07290c5144aa376fa5019a71eb373e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:10 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:10 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca036c224a307e549920f47134e48b5be91a86abf9c7597c0d58016be93fd37`  
		Last Modified: Wed, 19 Aug 2026 17:36:21 GMT  
		Size: 71.4 MB (71447959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ace3261ae14a4e973c51a70fec57ee61e7d67ef1785a84b30b82aa8f0741eb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dbc847891dec3b6076c7f2b35ee254026cac2a99b08f5a5bfb34b19b7f6cf0`

```dockerfile
```

-	Layers:
	-	`sha256:e9e92b933701eac3f5503e83b241367a770603e7eba6ec4aac4e6c5ece03bf69`  
		Last Modified: Wed, 19 Aug 2026 17:36:19 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a62bbd63f9a1b45e7bd6ff17df651373b74764ef808be103038aa8294b63be94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74863777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68fab49a367f735b6ea55a98d99514230fdd043b5c4605378981905ba1b5e7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:16 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:16 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:16 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09af3c337f09144db4dd18aca86b7e72a3e36ed1123887b5b61949886ed3a56`  
		Last Modified: Wed, 19 Aug 2026 17:36:28 GMT  
		Size: 70.7 MB (70681917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7e1dfb6f12aeeaa4ebb2dbbe8e0f3b012cd690da3f7faed8f8d1392769f471ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99933db746ef264f56bfef0cac8b43bdab5b252f140b8d57ab8f9af02f8f806e`

```dockerfile
```

-	Layers:
	-	`sha256:bb142be3703599029d7f09de3d8adaecf33fa973a3e115f40cad12308d7659ef`  
		Last Modified: Wed, 19 Aug 2026 17:36:26 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
