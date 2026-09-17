## `azul-zulu:21-headless-alpine`

```console
$ docker pull azul-zulu@sha256:69ed6a134fb7dbbf0a582233448869133d8c7c4516e1b0495a862da51a809f31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0f125a9cd56d3d219085ba90634abed502e39aceacfb788c328c19d5631815b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161050100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3bdb74485c9823829839c0bdd2a67ca9b32ea4ea8a1ed6f7e58085a8e5b805`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:54 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:54 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e823a4a0bd46b82840bd0c46bd73bece23d299cceb1c67d7624a902ce81bfad2`  
		Last Modified: Wed, 19 Aug 2026 17:36:10 GMT  
		Size: 157.2 MB (157205679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:823d563516756edbc6322279c87db0ee6eadb52e8e17d0297b6baa7d0dc3d58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1f3b2001f99417bba093598f2641cc069de2401b2b9de07c25a6d59a09ab7`

```dockerfile
```

-	Layers:
	-	`sha256:352449d4aaf2e611d5a81b9dadf96425d24c0a1be2bdb8cdaf63e30a140489dc`  
		Last Modified: Wed, 19 Aug 2026 17:36:07 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:71a0e7a5117f2013992f5ce5a9fd3e05ce0ea392e0f1c70c581c00f7219fcfb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159599360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7168406cfbb25f39305316713a6836db3ca81d084130bb3e7cd510733f55ed`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:54 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 17 Sep 2026 21:39:54 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af260d0293ba7f99fe156cf07891e2963bfe95c4f278379470aff6edf423bc8`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 155.4 MB (155413304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ec3f02ab3713900dafd322ff85b919be83689ef5d18b3da83dc07331b4a4d2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdaf40442b375fc1742b7e565e2232252f0316c21c32b715b15f38239d266dc`

```dockerfile
```

-	Layers:
	-	`sha256:686924d072dacdcd5af51dcaf8fb9efd251e4f5028598509fe94f257abd12295`  
		Last Modified: Thu, 17 Sep 2026 21:40:06 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.in-toto+json
