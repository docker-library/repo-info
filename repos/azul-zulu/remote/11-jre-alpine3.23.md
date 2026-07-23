## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2dc32d3014cc456d2f2f913a07fee8783113ba9fc7ec75be7c647cd0ba0a72c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:aeb9cdfde3b414058abb6d5693a3a1d16d05b28d3589c8b590578b158cf9f35d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65731054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0f4f1815e50d2926e5b179e2e3e672b611e36e3102376ff5d7aa41947f57f0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:32 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:32 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:32 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6bfd082dad5f3967bc4d2dcb51a4b8da8b18be69a0d41687ed09f9559c788d8`  
		Last Modified: Thu, 23 Jul 2026 22:28:41 GMT  
		Size: 61.9 MB (61886633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f2f2c4695063352042a8c724e524a1b18763353286fef5f7316cdaa2a3da17db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481ece3bd14137bb8155b99527a21dada9402e5b9b42635f43b747c40d4368f0`

```dockerfile
```

-	Layers:
	-	`sha256:939317e043b655219b86ffae67287c1201b9b109de4de1f02cd9488c5dc6eafe`  
		Last Modified: Thu, 23 Jul 2026 22:28:40 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:748d202dc26a7104d667c4f525394aab27ff8ddde70878a7df893f7eb6c1c0a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65299195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8c51e65f49538f8029a20a789f258698328f1c25fa23c2f7ae25c8dc199001`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:29 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:29 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:29 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b6fa00b8011f6cda6f408a9fe1d3675eae0c52034bb849dcc8092a288434bf`  
		Last Modified: Thu, 23 Jul 2026 22:29:40 GMT  
		Size: 61.1 MB (61117335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a5420db3e008e4e8a474bd9b428b5d85a50069930871ae57936d3bcf1a64cf40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dedb67d6729af908908d0d9c741a0b3200eb7bfcc5e6041c48139e40f65ba7a6`

```dockerfile
```

-	Layers:
	-	`sha256:edf1cda36cbc33908c995df12265d99db4fdda272ecf1defde5a1118dc0d0440`  
		Last Modified: Thu, 23 Jul 2026 22:29:38 GMT  
		Size: 7.6 KB (7573 bytes)  
		MIME: application/vnd.in-toto+json
