## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2fb1048aee7fc4c088eab001400dc02e875d639d5e83ac79d273d84c1c91c503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

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

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

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

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fba17c62fe53efc772ab115e128aa58aa4b332ac717187dd96a51edd748a883c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142439225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c05730ddfeffd2a5167b6074d1d8a284aaa8fad09d3abdf4b86a7f7252cea7`
-	Default Command: `["jshell"]`

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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:39:26 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d7d99788dd05defa6eb900b28d8163a986e6e627aa9ac953394d096ae1bb3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 138.3 MB (138253169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9136601647c00e8065f6843e61bd5dd79b8cbd07aff2dccb6f94adee2567baba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb54ee94484259abbb6672833c895b14c5bc14f50ff129ad15561143c796072`

```dockerfile
```

-	Layers:
	-	`sha256:8219707939eb50755bcba9ec806fd0857a8357d0fe4131d3968220be44c02753`  
		Last Modified: Thu, 17 Sep 2026 21:39:37 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
