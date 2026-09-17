## `azul-zulu:27-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:7460f9afa738bf8bb7feb91c3b725cfafb81e46bad96563cc3de3f08c5bcb795
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine3.23` - linux; amd64

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

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

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

### `azul-zulu:27-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:37d0b6a61a39c46683c204f3ad946d6db22948dca2a0423d8c6a0f2ad58b92c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89768851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:459688307c0453803d4d8db56c25838c2c8a1ebd223694d700a85e738535b310`
-	Default Command: `["\/bin\/sh"]`

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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:43 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0b0f0a8eb2380006ae5c56ef4a5aade2723dd4ef4d19413484ea1fda9c7365`  
		Last Modified: Thu, 17 Sep 2026 21:40:57 GMT  
		Size: 85.6 MB (85582795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b49a4ba2d49b19dbaa7c2a93de06831e057718aa268a91f01c0fa6c4aedcc3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4970152cb24278dee5cbd0fff5d1f590da1ccc8abc56d7b800bce6a35676fa3d`

```dockerfile
```

-	Layers:
	-	`sha256:b79a73c96adf89a61f2a4b897b0260a3f7784230fa47695d92b51ee92aa01c75`  
		Last Modified: Thu, 17 Sep 2026 21:40:55 GMT  
		Size: 7.6 KB (7564 bytes)  
		MIME: application/vnd.in-toto+json
