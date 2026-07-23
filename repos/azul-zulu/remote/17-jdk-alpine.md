## `azul-zulu:17-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:d5a76a07d9d2a1f95e33b301fd1210a30c7f34274cf73fde0ca11b39d36395a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1a60b2e13e75990b874a7cafd268cb504c14b51a7c0e51fedb8b2e0a2bd81636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151117132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831c89ae0b25a9d0d3e1af5b0985fe4f1199db03c2f1cc73a40ebff24d5f5f5a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:54 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:28:54 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:28:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ce5abe54fdb9f338791de7c6b088b93f119079ff9687027052ea88aed1de8e`  
		Last Modified: Thu, 23 Jul 2026 22:29:09 GMT  
		Size: 147.3 MB (147272711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eaafa632095b0884e967da8c19e0347ade35f991862135937cc94cf81c74b729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30198d458cf15c62643bb0adf01abd5235cdb22a42e2d1368e1f665bebd4ac`

```dockerfile
```

-	Layers:
	-	`sha256:10f52a6be532016d42d302a55407e746f25f63288e6e816e0147a989efcf9eec`  
		Last Modified: Thu, 23 Jul 2026 22:29:06 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:26cdd092f13331e2a5282904ad1440067937e808540322bdfb066c83af11c990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149907901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba910f02e6853a52a1f6a849d238336121298e4bece49eb85b9f68eb8ee18456`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:50 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:50 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:50 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c45c410f4a61057921962bdd79a3cb375c0e1f535592ea43f7071b7219cc44`  
		Last Modified: Thu, 23 Jul 2026 22:30:06 GMT  
		Size: 145.7 MB (145726041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0f8e413d473c868aefd3089ac4efc78d6d6dec0a0a0591632de62c56c83c5d5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47249807d19057b22e503d553676c70b244d128dafcefa77142d8796325220ad`

```dockerfile
```

-	Layers:
	-	`sha256:d6473402411b716445fde7e03226142485e1c120a7401e9744b948de2411f888`  
		Last Modified: Thu, 23 Jul 2026 22:30:02 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
