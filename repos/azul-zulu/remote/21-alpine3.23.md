## `azul-zulu:21-alpine3.23`

```console
$ docker pull azul-zulu@sha256:83f62de62578ec1855560771ec14133eee56185f4de47f26bf8b687685a0b388
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6d7b18c1a0853ca9401add4a72b2da87b50044b9f08c23b27b3373062383d24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164504022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9627b2d8e6ab7fe8d5f986f633f25cf8715bfbfdde99b529582f11f4fe9f32e5`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:28 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:28 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cef95b193db43609e22eb1a7fcaa57fe0c8a1358285684ab63ad2dba2199de`  
		Last Modified: Wed, 18 Nov 2026 02:42:44 GMT  
		Size: 160.7 MB (160651433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5b93a8adf30a7c076f6205cdc2a28aec7bd0fc43ef24a15b64217600e07a357d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32600a1a9f09bc1cd01d819f3bc98f972c02fc0405fbe39ef3e8f8425cf31d9a`

```dockerfile
```

-	Layers:
	-	`sha256:459266897b285fd5b1aaff9a32c88ec70979c44c1dc22496b0e016aa4df2b84a`  
		Last Modified: Wed, 18 Nov 2026 02:42:40 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5e7ea309d46cb7b33c2ae58c9fc574eccc81c1cd885d77849f50397eec56e4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163100546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696c012c436b3cb2403e51e93d821ebdfc5db2f63550223811a05ba712927b74`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:18 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7cb5f09a0badc89beaebd71fbbedc83e8d84ff5d748d4412c6323e6c5e887f`  
		Last Modified: Wed, 18 Nov 2026 02:42:35 GMT  
		Size: 158.9 MB (158910325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:151259d84a9a99b951932533917edc188e617fc6b146f90d622f908ac41abdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9290f70d5a9c1395a95f9fa455ca7d4f1cf3a16ed1437eb44c42bd1a44421c6b`

```dockerfile
```

-	Layers:
	-	`sha256:84b923c77fee04376051b44d247da355c42c8e9da41cc70b1404ed4db9bbe0d4`  
		Last Modified: Wed, 18 Nov 2026 02:42:32 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
