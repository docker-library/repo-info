## `azul-zulu:27-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:633b97cf83db9e54a0fd1d8d0fa2781f1fbc022a0d0ba89885800411af9b14ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:03f612c604fbaea4d77d31d4c3536ad40f09be091ad8f741d356381d07d2d2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (186008241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1eec3ef495554b33fccf2dfa387ee729a19f26169876c569776cd8e0d6f6c0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:48 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db51a1f181f1136706b913e755f3064a8e3a2f866cd76b4d8ad4b9d79f633e2`  
		Last Modified: Wed, 18 Nov 2026 02:44:06 GMT  
		Size: 182.2 MB (182155652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dede2ba45bb8402790967764c46de680a9e0c0d40bf7e111dd8e2355f6d2949f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8424cc6bb3a98d7bcb9df03d18a63d83c5cd3f148b939ed89ceebe297903a465`

```dockerfile
```

-	Layers:
	-	`sha256:b81045a733f5cb06a6b6b63619f0e3f65dd0522032f6cdfa52231c0455afb811`  
		Last Modified: Wed, 18 Nov 2026 02:44:01 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:14e4c31d2f1b4dc6dcc8ac1aece75de1099756e268c84abb5e06624bfe42e267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (183964330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcdace51fc57d87ebf1db01672c8737d5119cdd637bed7b54efa626e58dcf4f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6507157341ccdccec8c7c698879ff85f37de8952e52c7bd04346ac27e2cfb3`  
		Last Modified: Wed, 18 Nov 2026 02:44:06 GMT  
		Size: 179.8 MB (179774109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bbeb0bac4bcbed344446ff2ac9a3396a8e40d264f9443f73f884cc006b5a89c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331518cceea584caa04714d9ae9f1935b9fd0a52f51a1abb9b451ef67f0a884c`

```dockerfile
```

-	Layers:
	-	`sha256:fd3319e353a6db99f432b9fb56185073cb4d059bccacbd3309ad7e0a8f82a54c`  
		Last Modified: Wed, 18 Nov 2026 02:44:03 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
