## `azul-zulu:21-alpine3.23`

```console
$ docker pull azul-zulu@sha256:6b74ad98e189bf30d08a391d15d94f2f23efd3511fa32fd3d663125bb78fe06d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:28ee908ec33dfd60b199d9dec33def517be32cbf3c8599f36e6ae4abca5e491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164115372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0ed973da28d08251d97915f5af985f30f404d668bcc72ac4ddd148c7561f39`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:29:37 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36b23ddd6b2dc92fd8c925ede839fa31b26e9e23cce2a9c2e84bd434118c525`  
		Last Modified: Thu, 23 Jul 2026 22:29:51 GMT  
		Size: 160.3 MB (160270951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:41a665a9b41900cbad28026bc0bac21c959a052aa9029c3ce63c17816ac19e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb2390ceda870c120b51c8e0c90d2c06f6d29feeeea5bf6456c0bc58f73923c`

```dockerfile
```

-	Layers:
	-	`sha256:d40fc5dab2363e8c7fd1b426ba333db62ff2275b40315183cebc9babba4164da`  
		Last Modified: Thu, 23 Jul 2026 22:29:47 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d343264b99479079a59c42f45788b89fed474d9310b38125d4e11877134b8327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162706593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f121520d698dcddf41074261bb09a7ac84b1d5d741a7fba4bc0468acf966fbda`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:30:36 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8705aab9745fd26180bc450d4d53b740fb160ab3060194d39bd536a8fab1c7dd`  
		Last Modified: Thu, 23 Jul 2026 22:30:53 GMT  
		Size: 158.5 MB (158524733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a94146312783aeaa100f276e8884ff4f7688eb59d73b6f9ccf25f30899600e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f299f4ac1177a4912bc4e82ff60eda9b863fe3275645a5718a5c01fbb21e3c33`

```dockerfile
```

-	Layers:
	-	`sha256:dba21598c83baec260168651fab587ede3317651414538282e5d6b0f24537558`  
		Last Modified: Thu, 23 Jul 2026 22:30:49 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
