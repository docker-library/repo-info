## `azul-zulu:21-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:52edf7c9baef1296c3e9545bc0eb463e52efe196d53adcea6e3ab98a9a60b3b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b18b134fae18feee284d3b1d01c1849299014fa7248b9ac5b0e73d29ff206889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75300141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb165e5b6ac51235832a6c1d16c30e460f1074736a728b5ee434df59a018d6f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:11 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:18:11 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc8d44154339dcd1ffefdc30b45d1d87c18f22c890420cc86e59f7a58c9fdb0`  
		Last Modified: Wed, 21 Oct 2026 21:18:22 GMT  
		Size: 71.4 MB (71447914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:af603016bd4c68cbe12eb9d998ddceb13a508e9565a3410138b5f0d316464759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f99143fe9341508f3863a70a7eee41511aa36e23f5a789d9251796b8fff8ba`

```dockerfile
```

-	Layers:
	-	`sha256:5e8cd56f8e89be74075410a45388d70e449f4a661fc256d261fcd64fd7200a3b`  
		Last Modified: Wed, 21 Oct 2026 21:18:20 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:678ab68547d6116c0b955b1494bb432afd35f67b144feddddce9651d1b0218fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74871256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c332ad667252df71f7443389bda2e158d2924720b8584f30cf0baf883cda93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 21:18:47 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85b700be98ab7688b55888e6346f55b5d271589533bbb9db4f00d65b744e0ff`  
		Last Modified: Wed, 21 Oct 2026 21:18:59 GMT  
		Size: 70.7 MB (70681762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2513b3d145d7953b689730c8fcab48fecdc6c8d724295bce697975fad8b4d3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835e554a09c156f306615e92402fa3fce8b62b062fed54f0249a9c929d946f49`

```dockerfile
```

-	Layers:
	-	`sha256:851d0c67ef376224325dc8c0b0e15ea7c965a2560c3d5c5ac25cb470bdded875`  
		Last Modified: Wed, 21 Oct 2026 21:18:57 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
