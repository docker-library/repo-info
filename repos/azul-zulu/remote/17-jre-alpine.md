## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:66090537efdbe1808508bd67732b007f31879b3f50e29010ecc14c8c93a4f2b9
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
$ docker pull azul-zulu@sha256:e320b052f9f9b84bd89335f0fd3b620cb0632df6fbee9efa39943291d14badae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56511c322280aa6dc8f86ce564fbb4297ec5dc6e3cf3ec0c7c129860a0aa5ac7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:44 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:44 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa418dda4612c4b37d493a59a0045f99926e40e9135d040c6a921f6b2f4055e1`  
		Last Modified: Thu, 17 Sep 2026 21:39:56 GMT  
		Size: 65.7 MB (65657100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:99e6d5a4d8a9e1ac5df972cd2bb6146ce4802f9afc8f7bdf1c92a9c61bedf305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9d1c39ebf9c537c80582ad89ffbc981cd88e4a681808b183760cc48d6ce6a3`

```dockerfile
```

-	Layers:
	-	`sha256:18fd10f14ea7e546897299ca21a49b031c57e124c39e3299b773ef728a4a46e6`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
