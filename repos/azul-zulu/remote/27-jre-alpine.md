## `azul-zulu:27-jre-alpine`

```console
$ docker pull azul-zulu@sha256:b78dd58148d8f991d26cecc2804d6643f987ba879d06ce34fff00404e763c5b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8a6f1c4f366d96c43fa4419205e3e94e0daa1d5e8f8037a423fec0cdc046bb24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90584114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624092606751dc880cb15b4865dd59dbff76166ff59635950b92e769e6be64a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:30:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:30:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:52 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0dac8c0e9a69e16524981b016b63e92bf8fb3db72f9f3b5e6aba747f50261b`  
		Last Modified: Wed, 16 Sep 2026 16:31:06 GMT  
		Size: 86.7 MB (86739693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:548e93fd99efdaff9bc249619fb8c74d79718b60500f69ee7999a43ab44a6204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0e227a4332ef98044a65fd7d2ba08c1c40ef073ffa120a2cd17c023b6f2292`

```dockerfile
```

-	Layers:
	-	`sha256:dc1c80005cf93a96f29fc4987ab07284606a2bbe0ccdcf75efd5fb91ed7576d1`  
		Last Modified: Wed, 16 Sep 2026 16:31:04 GMT  
		Size: 7.5 KB (7472 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a7eed87a204832fce3498bd5547e8819154ddd3719593a8285b07a5707d4211d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89764654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625462da194cbef1a402e3979bc847d2c58b3869b98f5158107ad5567fdeb487`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:30:06 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:06 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:30:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:06 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bddaf272951bd9047dddc44c73ec9731d66ed8319769012ca2ceeffc728cf21`  
		Last Modified: Wed, 16 Sep 2026 16:30:21 GMT  
		Size: 85.6 MB (85582794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ab43e31f7bed26552b35b837480456420f7d8adee7da91cbd8a02b17dab34c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e0733042868b2ec546297d0e46f90bd452a140a1e5d177863d38e563c90cef`

```dockerfile
```

-	Layers:
	-	`sha256:b6888dfcfa766463ddef6306ff2f47f1f88b8a4b26d8431a97af43ec57a33e1a`  
		Last Modified: Wed, 16 Sep 2026 16:30:18 GMT  
		Size: 7.6 KB (7564 bytes)  
		MIME: application/vnd.in-toto+json
