## `azul-zulu:17-headless-alpine`

```console
$ docker pull azul-zulu@sha256:a6fa40e54ecea10b68562233097765de711c355501928de6b39d97651dc5d6a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-alpine` - linux; amd64

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

### `azul-zulu:17-headless-alpine` - unknown; unknown

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

### `azul-zulu:17-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cfbf8ff83cfa168c17ad27cba0e2a25943a667cd9d6a29b697b991277ab80579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146753692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f546c02eabd4e2dc7210c60be9a7d52ed83fdbea2d3c467277f56f3aa9a889`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:12 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:12 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cc0bd27410f035a2bd01b2c6d2e7d5c89ee6190cbc2f587bfcc18b84e42a22`  
		Last Modified: Wed, 19 Aug 2026 17:35:27 GMT  
		Size: 142.6 MB (142571832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d2af87d573870966f402d4ff25a581bb7aa32201b4c0da3ed4e9bb248dfe5c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d458206bec120fe5bc9529bca89161095c912789f6ec82e16036dbe72552f3`

```dockerfile
```

-	Layers:
	-	`sha256:67981e7deb7c5083fc93d364861f37b5fe87b8d8fe251d92b815e9f437ad017f`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
