## `azul-zulu:27-alpine3.23`

```console
$ docker pull azul-zulu@sha256:0027136cbcb94f6f8d9260bb786483a8e777b7aac75b7f32ca2807a281cb7806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:02f423163e44dd115f1095a4354ef457f630e37b6d9bbbcaa6515291801db36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185886808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567af6adc6ed7e9cb452eb4d48c926b72bb9c8969b5396815609f5d6c0945f3c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:25 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:39:25 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06c5cd8162508d9db8fea30ff378fcc1aa2635cdc2002f84ece12935b0b5905`  
		Last Modified: Thu, 17 Sep 2026 21:39:43 GMT  
		Size: 182.0 MB (182038301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cccb3aa321cfbba618cdeea1cc6b5700e0029f387afc10be5d3018f657ef5218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffdab38d075720ce85f0ca88dffed9876e2d8856ff8ec2b7ebb377e9af59a8a5`

```dockerfile
```

-	Layers:
	-	`sha256:353c53b43b7300e342f45dd81b00e77cd0624bfc08efa3375624af602e717397`  
		Last Modified: Thu, 17 Sep 2026 21:39:39 GMT  
		Size: 7.8 KB (7807 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bd44cff62a802e9087857d9cc5cba7c51eb09d034c764a1061e716d1c3345c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183811443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb3909c289f3416a26a893b40863fcfb26f5392916bbe3eee3540119370a266`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:43 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:43 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db920dc8d379e6739d262d2f678687196db886e4f3acd6bf051327819988cd9`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 179.6 MB (179625387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cfa8708e9defc09113173b5de79125a9c08729f2fb09c495557e010f01be9376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb19d06a62663c4069dd464f7488e1702be18b4ad6a25116e0d19d0ded9f638`

```dockerfile
```

-	Layers:
	-	`sha256:6a1c9b8c0575b3d2ca13c33eaee2710ece23f77185e77f3e207aa096aef77073`  
		Last Modified: Thu, 17 Sep 2026 21:40:57 GMT  
		Size: 7.9 KB (7911 bytes)  
		MIME: application/vnd.in-toto+json
