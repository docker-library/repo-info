## `azul-zulu:26-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:d7ec6a0a952aa21ddb4fecaeaac502c1b82a76e4cbfb31bb4c045b240c4cf1ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3a91936cd52d4d66e6cf7029483beeefa83e102b43218130460349f91563046d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184963911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b224c6c5aa692609a271ac7e752697c4cdea815046b33d5de4c5607a7e0fab3a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:12 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 17 Sep 2026 21:39:12 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5eba4e13adb318a1ef315c95d2716f9ed3e12d7bcf1dfb04bbe67cb529ae0c`  
		Last Modified: Thu, 17 Sep 2026 21:39:28 GMT  
		Size: 181.1 MB (181115404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:299666457c3b592a948d7eee261e1e29e9c3aa08c2f593e8aa96ffa475c6e7c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d037daa64b5d6023ff840e616f8532d3289db7c1b9d5a4b80cbe979bcc754e70`

```dockerfile
```

-	Layers:
	-	`sha256:412f29869615d772f70b6990541dc9cc2fb681eede117548aec440dc40f8e2cc`  
		Last Modified: Thu, 17 Sep 2026 21:39:24 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fc864b5b6b16a8e62fecf86a54b5ab7169df127929cec299e589d9a2b8f7857b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182805691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c57ee1c5a2f523d3d7342cd7a202922978c6a5168141615b3b535f16547c9e2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 17 Sep 2026 21:40:26 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d1ea748d6ebb47a2b1fcdb290e0768e3fb0d467803f6cec46d90cd2f0c227`  
		Last Modified: Thu, 17 Sep 2026 21:40:44 GMT  
		Size: 178.6 MB (178619635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ebe202437d6d8ce0a989d83c846be46f22e44c81364ee6947de76134cc03bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b30bbdeec0845a33a933c36724181ee29d5004351e0e36d84cfbdbf9d53d42`

```dockerfile
```

-	Layers:
	-	`sha256:cbc2654f89d4b66fd86148ae13443cc850927d76b7b5dcbeed6b0024f442e430`  
		Last Modified: Thu, 17 Sep 2026 21:40:40 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
