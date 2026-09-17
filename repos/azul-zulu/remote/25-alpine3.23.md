## `azul-zulu:25-alpine3.23`

```console
$ docker pull azul-zulu@sha256:b23762e985a13e64db8f7ace85be74d78fad5f7726d3b013d563c018651685ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9c6e3bd93cfe2296305cb35cdd0696cbfb687c02294fca7af718ff9208d526ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183904209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b25c7253173bec8f6b6c5293a6a37d6b5b998d703ff93e03f4ed0e33d18a46`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:31 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dc564e7edc55d7491cd9261c45bdbf4373ea11503415c969cc39d35d948f04`  
		Last Modified: Wed, 19 Aug 2026 17:36:47 GMT  
		Size: 180.1 MB (180059788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be8e143fc95970f0f9770b6f2f52d3ca11d10394a94c0477e00d559e265e01d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4695d0758d7a09bd63b3700eae553e47b250ff505aa63185ec8e1ee9632d53`

```dockerfile
```

-	Layers:
	-	`sha256:b2399700762b2193b7341c0ec599721f54e2a70c1a6f499b0dc905839ed8d441`  
		Last Modified: Wed, 19 Aug 2026 17:36:43 GMT  
		Size: 7.8 KB (7824 bytes)  
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
