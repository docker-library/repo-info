## `azul-zulu:21-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:8a8546765a3bb079565e1b390480c2abf9257af82e7d81a058e4b04257ac65e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d47d88601a1c2c94c20a6bb753c9126d7da941419e014ffc22b9589bfb4825ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72416184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f861f6b3d7592c2a3091fb65eec447a382c1ca15fa36642e35f5195f9492e88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:41 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145c982e9012cf1d7c85102a835ee80fe200947f86e29b97bba69b90311fd033`  
		Last Modified: Wed, 18 Nov 2026 02:42:53 GMT  
		Size: 68.6 MB (68563595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:922fe6a680aad83474359dac26d1fd2abc290e5244c50bc95b83e5ef3c65f77c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801247e147aa4e88ce79f41d0db7714a7f86b4c841c5412e365aa80067e55ed0`

```dockerfile
```

-	Layers:
	-	`sha256:bcf8306aa3cad9ffe966e1ba66b45a1c8e2656c7355e3a9584b887110e2b3892`  
		Last Modified: Wed, 18 Nov 2026 02:42:51 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:eecfaeb671c57c087cb4bbd5c5eeca9020a4327d9a232dfb7e47d6412b5aaaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71917132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad43fe51f1e12569a7358afad6ef836543c4e46784e6bbff32e98a725bd717b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:36 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:36 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1a59d1c166c554d2f7aeb129eef9f6d6abfb45f2d778b3d95282053d0285cc`  
		Last Modified: Wed, 18 Nov 2026 02:42:48 GMT  
		Size: 67.7 MB (67726911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7310db27bcc465b8a4746f77e9144f5aa79f657304577e043775bb215a7afaac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d06a8ae52d06df39b4b627d97b4d17896c0c44e6e2a1c9f5eaca39276a2526f`

```dockerfile
```

-	Layers:
	-	`sha256:8caadc74720af7e75fc03446ea6cccd0d3caf885b03e176f5d17d7d0f3fa5e88`  
		Last Modified: Wed, 18 Nov 2026 02:42:46 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.in-toto+json
