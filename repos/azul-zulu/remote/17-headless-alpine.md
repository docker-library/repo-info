## `azul-zulu:17-headless-alpine`

```console
$ docker pull azul-zulu@sha256:a0972c7a9369206ec72355a2e0415f63cde727e4da30cc25e4c92cfcef66e78a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ffbbda068651524ff2dba36d1dca3555dc8d2a3644f91b61841cd6e717ba2805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148022127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d044924eaed15e9428c0c5147ef565886d9bce74f9dadec2748b9bcd35c33acc`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:30 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:30 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:38:30 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d37c39212c44d925975bbba97673d80894af7882ecf3c993b8b53b88850020`  
		Last Modified: Thu, 17 Sep 2026 21:38:43 GMT  
		Size: 144.2 MB (144173620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b967d7793f7ce6494ec322c54551b023674184519f0f98e4239cc1bd9d669a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be70b135c0b70969d87d1e24266cf799294a57acbff52fa4b2f912b8347eb264`

```dockerfile
```

-	Layers:
	-	`sha256:255995b47bbf0b93989fb26f5ee9afb24dfb4b469545257f127d4d92b911925f`  
		Last Modified: Thu, 17 Sep 2026 21:38:40 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c8af17407b72b808ce4cdd9f037a59e0f23a7167fe3d601f38356cc1a968a7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146757907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b621d22cebddd91ab89c7dd8a3bdcb8be56b1219c072b152bf1129e759b8bf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:45 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca51d0dd80a6d74e74f3a0e60628b554ce154afd069c415430885f2a3e31d9c8`  
		Last Modified: Thu, 17 Sep 2026 21:40:00 GMT  
		Size: 142.6 MB (142571851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a701cf6054b440584141860c3c04ca4c664e6435b648214885178ec4730c1fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c072e3fc4c1800e9ae63191b786b1ce149d26ddb587f8e544e2ba18ca12de8d`

```dockerfile
```

-	Layers:
	-	`sha256:76887028826dbd8bc6a577da4463bd0b3c32411d7f91fb026ae54f4261a6b5fc`  
		Last Modified: Thu, 17 Sep 2026 21:39:56 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.in-toto+json
