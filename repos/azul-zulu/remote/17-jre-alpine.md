## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:02404e17c5c1188f0a6d78d737ff1f152124f3004527312261358451dd12acbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a0e06958d8e9662b9cb166ef788dcfcdef5a7c5009026163f1e4ffec99fcc60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70160859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac37afa286c87110b277c9b6dfe485b76c0d49938f45d0449dd2a175640961f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:14 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:14 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4645300b8a20c20e08f4e83ea9e75102584a945cf589565e1daf3cb0a9c80b7`  
		Last Modified: Wed, 19 Aug 2026 17:35:26 GMT  
		Size: 66.3 MB (66316438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:656d47c62cf0d88e6edeb39c437a6037e1008b9afe938b60d1a9e2629622ba87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b50c6369ebfdcda81c91c12c9f084896f6932c2cc8ef3e43b17b3dc2b6f622`

```dockerfile
```

-	Layers:
	-	`sha256:0edc41978c672cab4307c4583c715ad8bab67e8c860b1d80a0591e5d9d6d1b8e`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:17c01b6e227b67cf081663e612ba5b5f79acea370c1070dd195125e2fea30095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69839002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19be15b0c839e6f91adc28457ea1c95422ab08593ba8ebed7a6724456045b47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:35 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:35 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c039559f6c21548eff90227a220fcf78ff3d17a6132959c02bda360190f1f8ec`  
		Last Modified: Wed, 19 Aug 2026 17:35:47 GMT  
		Size: 65.7 MB (65657142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1d0bdd5e10ebbd51a18e125ec19f3d9404762b3f928ace9bb917cfcdcb07030f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fee72d211726ef649e1fda41fc058ff5e04ac66300f5eacf7498fef288a915`

```dockerfile
```

-	Layers:
	-	`sha256:7fd91d09689ed86c8e168c480cebfb254cb38adee16d2beab7597f4e61cb43e9`  
		Last Modified: Wed, 19 Aug 2026 17:35:45 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
