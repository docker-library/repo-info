## `azul-zulu:27-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:10966e0a428746058fa093768a8074f9c8ee81ce8bf636253aa1e68cdca3e1eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a21945b49803a5ff0ed3eb12cbeb170099a47c47e6494285375f75de3e3214a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87662904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9530e45a8857f625280e79fe61f2a8c73ea3fde55362dc15b1a204668fd5ac53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:31:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:31:01 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:31:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:31:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:31:01 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df6ee4410a2a392ab60900973c43db463e8ce774c6c26c2058a982f987a75c3`  
		Last Modified: Wed, 16 Sep 2026 16:31:13 GMT  
		Size: 83.8 MB (83818483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9c3cc9d62d98dc6e18aab75da7cf2679c74b68454c7580fd6753b62ccf5db2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb88f1ab1e195f004e20054b110a171317c5a748c0ef870c19b19bee26672f9`

```dockerfile
```

-	Layers:
	-	`sha256:ca679828b042c64f8faf75e851f03b6ae561d949620a8ebf6ca2f8ebdecdb1ad`  
		Last Modified: Wed, 16 Sep 2026 16:31:11 GMT  
		Size: 7.6 KB (7564 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1734cc591d9c6f43f0e92461a8dfc71f38b2dfc2394c52014ec5ab4131ec5fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86822390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb14aa34eebc448e37396af8585afa06e310a0220a7cccb28c08f55a64076fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:52 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:52 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d4561a1b2a57aecea32a607f8ed8c8661606141632f784e8173ac468f891fb`  
		Last Modified: Thu, 17 Sep 2026 21:41:06 GMT  
		Size: 82.6 MB (82636334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c98cd841b057dd9cda3135c6c28c321bb686189b7ee95db528c071196a03abf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8092b11cdd885146b366b9687219c5d2bfff110689561a59cc96377539ca04b`

```dockerfile
```

-	Layers:
	-	`sha256:a47f65d8712d9324bcf5ff5f97d6e63d8eec10bbafb0f3c092b535b577d407c4`  
		Last Modified: Thu, 17 Sep 2026 21:41:04 GMT  
		Size: 7.7 KB (7657 bytes)  
		MIME: application/vnd.in-toto+json
