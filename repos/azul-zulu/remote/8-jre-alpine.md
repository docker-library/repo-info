## `azul-zulu:8-jre-alpine`

```console
$ docker pull azul-zulu@sha256:5d94c59a5095635a15a1dada3d11b65b9e55a85951da4646845bea3f093ab384
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:afb78d8c02e33ce5aae123f0b0bd033b645f48b85090ef371953ccd1bca29a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47958743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b3dfdc127b1f608d54e4dce07a0f2a2c91259cc7549715c3ed2c8b24f041e8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:19 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:19 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505f5320bd45eac00a7659ab4dcd636594117a476bdd43135783f1d393eae6a6`  
		Last Modified: Wed, 19 Aug 2026 17:34:27 GMT  
		Size: 44.1 MB (44114322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:74ab34a1ff781c1a468177338bd3e21f8209df8b14799fe1f96e91cf88e2b797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151d31932b42baba9119212582897b601491db3ffb1d4231be3c84184327900c`

```dockerfile
```

-	Layers:
	-	`sha256:a8f7023005a8a5855eba9f1cb6dcb349488040c6d5cf1206d17862f6d29a5991`  
		Last Modified: Wed, 19 Aug 2026 17:34:26 GMT  
		Size: 7.5 KB (7474 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:98d9004078ffb52c127539d85d784069bdac5c8d75f8a314e82ca60100ad0b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48045296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d23bb617f82af012e6d3dbb57de0ce9775c2e8dd6cf30ceb1bf7f11be09eae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:08 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:08 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa916f6f556cd6add1dbd7368254b16dd92282fd56e429e4becc80b0e1b2585`  
		Last Modified: Wed, 19 Aug 2026 17:34:16 GMT  
		Size: 43.9 MB (43863436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf0831638fd7d02ddb8e08c09ca29c6af4d91c1fd938fade82a76479d694ec54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd7c722ac928e7255e4213f715bc35c9814c3883b5434d53dc927f6eea5b05e`

```dockerfile
```

-	Layers:
	-	`sha256:574ce113ad930e6160610f692f37c703e86e1dd8a8eb699d06215169804d3cd1`  
		Last Modified: Wed, 19 Aug 2026 17:34:15 GMT  
		Size: 7.6 KB (7565 bytes)  
		MIME: application/vnd.in-toto+json
