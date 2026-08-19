## `azul-zulu:26-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:b03355c464b826c133879eee7c78e516fbcf5d68970ab8696f6130eb04bf82e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:72f3d85349679da2c2c93b0e35eb0d196286a4cd1d31eb34947720018ba48460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88759211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c162e1e85b8a35014049d98740cbe14f7592a225f0b2e2bd0a2f90e32debc4a0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:37 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:37 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41156aab64b002173dc1686e029ef3efc3d40e486731df150c75712236f5a6fb`  
		Last Modified: Wed, 19 Aug 2026 17:37:50 GMT  
		Size: 84.9 MB (84914790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a5687b60eb8abccef4c18cc8ff9a78e02848eaaa5e5e0cdf92ed4fa7be6ecb12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020faf7af41da808f2e14bf795ca769f0ac073af613cd34ba36ff8ab7f9e331b`

```dockerfile
```

-	Layers:
	-	`sha256:15ddbec2f37c2ba693d792d05bf79e2863fc9765aebab2e363609c4d045b5b4e`  
		Last Modified: Wed, 19 Aug 2026 17:37:47 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2568f5ecacc810d798addde9b915c299a8decd520fe60b30c2b6471181db6b0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87888482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b58cb52975a25dc3109617f634b05ce3e932a3be8afdf943f7c4d94b36f41e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:51 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:51 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:51 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6d8e9d5b7c0d71e3538adb981ec5ba5e073c1bac2b9a469f390ed310c8ca63`  
		Last Modified: Wed, 19 Aug 2026 17:38:05 GMT  
		Size: 83.7 MB (83706622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:838ef6c02796e4f17b2ee0d20655fa72950b6f69ed5977c62bf662563223ebed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52aedd74256d956c45ef344022131270e815b88953805b733f5e4d19815e5b7a`

```dockerfile
```

-	Layers:
	-	`sha256:671223e9a87160d4fa3e4011f7bda09f34ea336a506880388c6e530af1104fe1`  
		Last Modified: Wed, 19 Aug 2026 17:38:03 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.in-toto+json
