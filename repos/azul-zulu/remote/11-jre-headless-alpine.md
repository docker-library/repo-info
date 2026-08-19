## `azul-zulu:11-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:235a3fc1bfc9907a875c66a3d094ae578d98f4850171060fe7f44bc62b7d3105
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b5e126bcbdcfbf9bd9ad21befbb8595578b1267047e736c80953b5728c0e981b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62623916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eace7a06845aa0289346e0dd6173d786b508cd85bdf46b0c5da699b4d47a90bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:55 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:55 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82372381d0cf01a607e1e81ca7914c07aeb86a442c8a7bc92250c1bddb244c2`  
		Last Modified: Wed, 19 Aug 2026 17:35:05 GMT  
		Size: 58.8 MB (58779495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:629e901db7a000de3fdb9573639fcbe729bd603da05f8238101ec0a83b828af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a8ec2711b154ab7db6623326477ba9cf3dbdfbcfc9f51fa366db2de10cd48`

```dockerfile
```

-	Layers:
	-	`sha256:d77c35b082f59e91d1e4acd9da79f859d05b5f13d750143e9d56e7e93108ed3d`  
		Last Modified: Wed, 19 Aug 2026 17:35:03 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cd286cc14168b88a23f32702f2434d6071656ac1caf1c9da03a9856703aa8958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62123732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed55da92831de8eebf217377db26f90ec2235ae07af8f6c77a5037f793c277`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:52 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:52 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63942b43882f32cba0ef38e0d693a617fb49b57a83698413b7ce6fa0b13bddb`  
		Last Modified: Wed, 19 Aug 2026 17:35:03 GMT  
		Size: 57.9 MB (57941872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:656c98de8f30d7f4f0da505167e767133fb3073d2bbbfef16e3a28cb7b7dcc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a4afe2bf1da54f3298ee5fed814e8fdd9c37290a47d42d33ac2bd82d241f7e`

```dockerfile
```

-	Layers:
	-	`sha256:eea81b5445088a9f9be1b4317b00960f2e5afd7af66bc8db3d2e777d4f525905`  
		Last Modified: Wed, 19 Aug 2026 17:35:01 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.in-toto+json
