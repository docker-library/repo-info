## `azul-zulu:26-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:899d96d1e83d906c7356c9f372e5aa49a22f1b82517ed3d8260ce9fd66a4f51e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5d4bf273130325437a926cca4236e53886d76cb683492ba14ce4d7c7e834e6ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193c99838496891ae991b112c7b966cbc01fdec1fedd6e106b20420c5c0caa24`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1475b2031ab9666971045534ece15edddef5c68f318eaa5246a9da1af78fbae`  
		Last Modified: Wed, 19 Aug 2026 17:37:32 GMT  
		Size: 184.1 MB (184105213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6a4b5e1e8169cf91e24f0acc64a4f2101a03bc47dcd92c669ff3d1b592d33510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9029c16f618898e3daf8045f7f367384543ff32b5e8682f8037cceae16e04e`

```dockerfile
```

-	Layers:
	-	`sha256:84701fee1bfae436ccd3dd041ce0f3d7d0f390dbbc2c0f4bc24796a76aee34bd`  
		Last Modified: Wed, 19 Aug 2026 17:37:28 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:60a4396216a9c606cfdf27ffb5019cb5c1916c05d6406fd8ca22b18635d0f047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185829849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ebe69d8f60f5331976185691d0069df1ed49c904bae5d55a46862ebfda4e77`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 17 Sep 2026 21:40:26 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321521f456b2da29f6231dd53e293daabd5e9ff7c8d585e3f686433d0f39840c`  
		Last Modified: Thu, 17 Sep 2026 21:40:45 GMT  
		Size: 181.6 MB (181643793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3dac886cd6662448e069b6308cda72a35fbc403d0c2620d118ae25df52cdd15a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7a7abf8fd55b6927026d5cc721f17ec40f65f7d5606a6a02715be1bd2944e8`

```dockerfile
```

-	Layers:
	-	`sha256:df864c3a12bc6caa9154a232ca266b8852749a83f17efe01c410c559616affa9`  
		Last Modified: Thu, 17 Sep 2026 21:40:41 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.in-toto+json
