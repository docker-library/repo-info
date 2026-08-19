## `azul-zulu:11-headless-alpine`

```console
$ docker pull azul-zulu@sha256:56f8666b4b014f0d75dea198019ad852cd2bfcf24d8bf7840e5c495989d18c2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b0a7781801dcbdffcb53981fa2e956e3ccf43e777e805fffc8f3d196c346dfe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.8 MB (143788503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7926d164d01e0d9cba580f51053eb00e59d4fa7c4192ad9492e7e3b55bae38c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:48 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:48 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:34:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e019fc20ddb23462a38a232a4e43607cdced0feee7611c6d110f2f8a8071ae`  
		Last Modified: Wed, 19 Aug 2026 17:35:01 GMT  
		Size: 139.9 MB (139944082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d52573b5fada623e906a8fef71550395ea37594a1254a3a49af9598a2790f9a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac216d18a0ae77d7644ecbe3142cc3c5137fe1aaa0759f4c2723061083e56b09`

```dockerfile
```

-	Layers:
	-	`sha256:cf81117d835930755d6cf0f25b3b219fa22e0867d9e67847a631eb8cc059624d`  
		Last Modified: Wed, 19 Aug 2026 17:34:58 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:41272524abe0861818a18c94ba351993319f063200fcf1cccb8a91e277db8a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142435088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9886bc969931433eb1df6d5504e04016e8bc59be53f68d76ec41bc54c0447e8f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:29 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:29 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:29 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:34:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9988271c2a489510ac4549827b07ee8c1112ae1242ec6cea4042b56ce62a49`  
		Last Modified: Wed, 19 Aug 2026 17:34:44 GMT  
		Size: 138.3 MB (138253228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:86784f2cd7479de5f95d787f5320675d9fa8d7c374d2682b3bcd31a5663aaefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc15e85f60ff6cb701b2312473e6b20daa3789b13f1c08246a7fd8a926a5f3d`

```dockerfile
```

-	Layers:
	-	`sha256:7c4b20b9123a138b16b88784ce64939a4d3a7e3b2dab27b0d647bb86f296f4dc`  
		Last Modified: Wed, 19 Aug 2026 17:34:41 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
