## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:542fed20249ece851ce3c08e8db8a7801f028e2e47278a4e897590846936eaaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b8b13b1be8e2765b9ae7259c7dad604bf4f5180fb8a3567c8c8c9e7a96ff4a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65730029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd0c6614e4bacfecba5d8ad13bf3fa9d8ee66e0040bb154e8cb1b335827964e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:46 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:46 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b52b471dd11b948fd880fd2852b8a991990a4f22500f3bcb4468cc0bb613029`  
		Last Modified: Wed, 19 Aug 2026 17:34:57 GMT  
		Size: 61.9 MB (61885608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ee972e99f45dc3bc547937adaf7b21329b45d9f747c6b66c012ce967ed1ec611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85291543e0421083037cedb244262b24f8af897fadcf2a05f6e759a76821f80b`

```dockerfile
```

-	Layers:
	-	`sha256:fda68a126d15d9ca3c8ed21a754121bb35d95bd3dc105a9141ed65fdedd820f8`  
		Last Modified: Wed, 19 Aug 2026 17:34:55 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:659a19d4e75eb3a1ee45933a991b38549cae1577e24a0172bcc71fdb7c37c704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65300829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc52c4ac63b80a344d1d0e6d0f66bb07095fc5b3862eec0a64c586c06335858`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:52 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:52 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a2dc19214d3441b50e3abdb28868b01f052aaaaba784968eddfa5f0903f6e0`  
		Last Modified: Wed, 19 Aug 2026 17:35:02 GMT  
		Size: 61.1 MB (61118969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0650dc0e76bd5c380ecae26c8e68b64609f64a820912057895b49cb344327b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3584425428bece1b5aa2f540fe38a465206a587b018796f89d8d20b9299d91ec`

```dockerfile
```

-	Layers:
	-	`sha256:c62681f4c747f664ad30a15c1a8b71413b753e4c36a07b57cdecefe1a6654f2a`  
		Last Modified: Wed, 19 Aug 2026 17:35:00 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json
