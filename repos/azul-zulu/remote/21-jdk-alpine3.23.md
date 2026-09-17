## `azul-zulu:21-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:13835d33fd5331ad5d2a375c44b50b4adbcb0210ac7647ae73bbc9e638f47f8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4b025ec51e86caaefbf92e6cbff1a5fc5cba2ce1befa5be2c29c7c8e7ac074b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164119498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f365fdbe86e1e0cbed956e98dd4c3ba1820c973e1c8a44a8d73d18d1b994682`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:47 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:47 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d68af8733d5bfcbca62224935c670eb5a47650525599d8a65055ebdb85f5e8e`  
		Last Modified: Wed, 19 Aug 2026 17:36:02 GMT  
		Size: 160.3 MB (160275077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:deb493e6b1ba8ccfa8e3e90878067d16e50f38e4fbc3ee69b4981887a12e0c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3c9987dd1ec166111cae86a5e196733b09960bce908ce4755aefc74b1e68ea`

```dockerfile
```

-	Layers:
	-	`sha256:25366454eed89eb2a7bf793365133a2299c53edcb41727a6830bb3ea3cfb3111`  
		Last Modified: Wed, 19 Aug 2026 17:35:59 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7bff57a0e11ebbb4c3e07059ee7810d2cec0d2cc5f2a267d7efdbcb5b7430c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162712040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b4f8c0f9e248e166e4437948ab6efd269a900e6229e5bed7921d3ca7fb9cb6`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:50 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 17 Sep 2026 21:39:50 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631ae1af991cdefa2eb6e246e26127c1e11c4fef298b51a704b3660aa47aaebb`  
		Last Modified: Thu, 17 Sep 2026 21:40:06 GMT  
		Size: 158.5 MB (158525984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:83d2c1afdccfd9191b85acbebed4ea5a5400489432e9fae0d2e4f2e56a36de69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb30caf14a2bb0e03821ce8c10e7b18db2e018e430664617fadb8bf6b9fc1c2`

```dockerfile
```

-	Layers:
	-	`sha256:f8623463dec51544ec29dd845f4e122d1139e2be4636dd907b8f8346ec47de30`  
		Last Modified: Thu, 17 Sep 2026 21:40:02 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
