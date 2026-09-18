## `azul-zulu:25-alpine3.23`

```console
$ docker pull azul-zulu@sha256:3d1f0c7b62fff7c6e1eed8777b37c8f9ffc9a57a44a9f73a231a45e8fa3e215c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:68c24a7a76b66f781b5c606b22b56ccb1ac1eb92ceefe1846c8876c7c0ea2c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183908305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d6e904b452963a7122d3d466a57c0aad6483f0323c2fc95206ecd55fbbacf1`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:54 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:38:54 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33db8905c1f916dc5d357442c4e72d46da25d170278eb0225f11b235ea9cf20`  
		Last Modified: Thu, 17 Sep 2026 21:39:10 GMT  
		Size: 180.1 MB (180059798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9cdf5364430ae3e70aac08781fb0cb50d278e7ebbe4474a359bac2a835acc2e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe134e842b130866795c9b76dea73294d6b2a17b767a3c9d11a658650a1bb493`

```dockerfile
```

-	Layers:
	-	`sha256:6090b6ca316c34cb5a2f5d6f57df29e702e7cec000d453885db21d95353f4a2a`  
		Last Modified: Thu, 17 Sep 2026 21:39:06 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2f1ac835dfdedabf14013c7910efc6375677490cb2ef4186c6d24b791cfdd3d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181858781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3b84402b7a23368dfe5f135f2dcb83146191d0e830e86c119767870fafb21`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:10 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:10 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:40:10 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d892d435bd1dc38a3e7c31e4fac0944b1cc25c55314cef50bed57d4b8697bec`  
		Last Modified: Thu, 17 Sep 2026 21:40:28 GMT  
		Size: 177.7 MB (177672725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:84b9f52888fe5f95ad4bde748aa334625b8c6da0a451edf0f36bf3512f2c065d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8182dadaf4bf74ecd9db0f3a8feb9344a9ecc5a098601bcb7afbc4244d74e2`

```dockerfile
```

-	Layers:
	-	`sha256:ab1d50708e5abeda4626f35fe3f02820c957151189d30ff4065492db46d64806`  
		Last Modified: Thu, 17 Sep 2026 21:40:25 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
