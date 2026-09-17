## `azul-zulu:21-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:7fe568f7861d0111d87e187e511897f78653a6ac424d61f3de64efb16f832f6d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2269a08e58b6e10e3044f5ce81596108173d3e6c76756b4db79333f814cfe2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75292380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a831b112ecadca99a0f671b289392244f07290c5144aa376fa5019a71eb373e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:10 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:10 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca036c224a307e549920f47134e48b5be91a86abf9c7597c0d58016be93fd37`  
		Last Modified: Wed, 19 Aug 2026 17:36:21 GMT  
		Size: 71.4 MB (71447959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ace3261ae14a4e973c51a70fec57ee61e7d67ef1785a84b30b82aa8f0741eb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dbc847891dec3b6076c7f2b35ee254026cac2a99b08f5a5bfb34b19b7f6cf0`

```dockerfile
```

-	Layers:
	-	`sha256:e9e92b933701eac3f5503e83b241367a770603e7eba6ec4aac4e6c5ece03bf69`  
		Last Modified: Wed, 19 Aug 2026 17:36:19 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:024d9c6752e9dc947a7e4882fb56cebfecb70951b2b67b04c72b8256acf58f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74867859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c3200ce411125d6306c380f0574d2d510a0f1fca3a0bf92236897e0e20cc983`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:03 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 17 Sep 2026 21:40:03 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a54306f173f1a49a2c0e0015b852a99b4dba3d423a5c7a5209c1477cb380ab`  
		Last Modified: Thu, 17 Sep 2026 21:40:15 GMT  
		Size: 70.7 MB (70681803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fba2bbc4ed5bad58637bde194234f95d19eafb543047641502fb5ff77b1848aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012bd42a2f5a5b7d4c5bbf7271d8c36b5d85453fff7d35fef10d42dd6db1c9a8`

```dockerfile
```

-	Layers:
	-	`sha256:60c080224e48d24c37ab22c8020af4b86fe11897337ede994c8114c43e644f74`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json
