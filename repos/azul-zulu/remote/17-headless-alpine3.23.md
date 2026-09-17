## `azul-zulu:17-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:904bf1965d973dd76e391043b09ec0fd26d613cbf2d20b9f69055ff5eff15aa5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:589ee270a73346d48f60efe2cccd40264660cd6b6cb5e3097432ded11d88e358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148017996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d8016bc84a1e174a380e77a2382a9c501b7f91eca3bf35b9838a67e936b967`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:13 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f271fa61b2daf949ae0306b8bad1554bc899d4975cd12e7324a114e32e8cee`  
		Last Modified: Wed, 19 Aug 2026 17:35:27 GMT  
		Size: 144.2 MB (144173575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b0f7fbdd0c117b8a6d4a3a160a8ef40ffd5a6fc4e0144dd99649a07f24432f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b12ef4feadb09fa6954cf1b0e10d85f25270aaf58b55ec9c7266535d93191b`

```dockerfile
```

-	Layers:
	-	`sha256:11949b9ace9ef2b9cf65a4deac2883b9329aadde6302929b176b2dac43d16e90`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c8af17407b72b808ce4cdd9f037a59e0f23a7167fe3d601f38356cc1a968a7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146757907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b621d22cebddd91ab89c7dd8a3bdcb8be56b1219c072b152bf1129e759b8bf`
-	Default Command: `["jshell"]`

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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca51d0dd80a6d74e74f3a0e60628b554ce154afd069c415430885f2a3e31d9c8`  
		Last Modified: Thu, 17 Sep 2026 21:40:00 GMT  
		Size: 142.6 MB (142571851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a701cf6054b440584141860c3c04ca4c664e6435b648214885178ec4730c1fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c072e3fc4c1800e9ae63191b786b1ce149d26ddb587f8e544e2ba18ca12de8d`

```dockerfile
```

-	Layers:
	-	`sha256:76887028826dbd8bc6a577da4463bd0b3c32411d7f91fb026ae54f4261a6b5fc`  
		Last Modified: Thu, 17 Sep 2026 21:39:56 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.in-toto+json
