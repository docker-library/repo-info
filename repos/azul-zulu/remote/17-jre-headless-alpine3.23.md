## `azul-zulu:17-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:3928ef2cf681796d0d72f8e54e3f247ac19d58d2fc8e27ef65e03501be3f087d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8091e52d0cbf4f82b7a991ba041a9ab05ec58ac7a9a3aefa3e3b951ecbcfcdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67065893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780f96f46a29c53854cb11c30f83aefad6f2f564d1e69afbc7c6687954e30514`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:34 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bdcf8075b0787f02ff47c3ca62b733d4f447b658d8b3155bfdaf4352651690`  
		Last Modified: Wed, 19 Aug 2026 17:35:44 GMT  
		Size: 63.2 MB (63221472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d4ad28db58705b58d4e9017c7e1fbac6f24c13fc64c53d8a5e99b76b7d48eb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6b30967d39512127e6ccdf16e915569d78c4f0b61f204f81871d05a20280d3`

```dockerfile
```

-	Layers:
	-	`sha256:0fcad54a1fdcd2d8f67a5d10a5bd20298f512191cdce32f86a26fa74c39cd561`  
		Last Modified: Wed, 19 Aug 2026 17:35:43 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:94d953327859b2c99dae5c43f22e9e77d331e62d1d76cf37e1e39ffc2a835d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66695005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1317e35b52cb6616e09adae6de02c7032bb7590d9da0d2933d35deea8f247d7a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:45 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045957cd64a284332f39741fa7e0317de3c6ea4d4e11ff82fba7a2e1dd7f1f99`  
		Last Modified: Thu, 17 Sep 2026 21:39:55 GMT  
		Size: 62.5 MB (62508949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d53eca416a3c3d575a025f157d51fb76258832766f77e5a0c19348792bba0838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5ab5113e272aac21775fc4fd7e3118a97c9feccd6e85887308fcec35d40ce7`

```dockerfile
```

-	Layers:
	-	`sha256:381536677deea2c9d1adcf2e905dfdf905a01feeb71edecbcfd17ef7f12eaa64`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.in-toto+json
