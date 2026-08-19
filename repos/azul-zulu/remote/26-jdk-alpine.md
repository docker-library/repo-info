## `azul-zulu:26-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:bda9b3bf5f047ec34aae71b6c6995d9347cbd477078322d49466d38b53d8acab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5d4bf273130325437a926cca4236e53886d76cb683492ba14ce4d7c7e834e6ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187949634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193c99838496891ae991b112c7b966cbc01fdec1fedd6e106b20420c5c0caa24`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1475b2031ab9666971045534ece15edddef5c68f318eaa5246a9da1af78fbae`  
		Last Modified: Wed, 19 Aug 2026 17:37:32 GMT  
		Size: 184.1 MB (184105213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6a4b5e1e8169cf91e24f0acc64a4f2101a03bc47dcd92c669ff3d1b592d33510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9029c16f618898e3daf8045f7f367384543ff32b5e8682f8037cceae16e04e`

```dockerfile
```

-	Layers:
	-	`sha256:84701fee1bfae436ccd3dd041ce0f3d7d0f390dbbc2c0f4bc24796a76aee34bd`  
		Last Modified: Wed, 19 Aug 2026 17:37:28 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e1e36e12a591c0a3c494405ce96199855c8d4c249b4799b230fe5c4a6bd2c38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185825626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e420b1c98be2d14e10ff276cb62e755538450c9a110a76cc6863097933fdd4d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:26 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:26 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a960e92f6f7dca2118c1007ec4fe694942c8643674d2b4506a3158169dcfb8db`  
		Last Modified: Wed, 19 Aug 2026 17:37:45 GMT  
		Size: 181.6 MB (181643766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ad8a40389a2a90fe017bbad9a19a6d52a2c451d902bc6467a8c68e810fad7f6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0174b4022da58ba6f31e10161e8fd26c34bfa28168dfaed9e626340e5f4e127d`

```dockerfile
```

-	Layers:
	-	`sha256:8f9af9b1a0bd2fdd2418a2dfb1647b394d5b0a7cb1436c78209105f756d351f3`  
		Last Modified: Wed, 19 Aug 2026 17:37:41 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
