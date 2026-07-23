## `azul-zulu:25-alpine3.23`

```console
$ docker pull azul-zulu@sha256:c48bb6d52d8447391bb484d425d9a2bef86073a076a2342b36f96d30717c4907
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:39b4068888618daa10e13bfc07ffac22b46cdf6cbf49fc82eaede8484a5d75e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183904587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9152fe0d2d1c8badc083e86561acd3eb3d07ce533b2bcd1c7c510d4d4890d9c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:14 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d0dce7a4413f828371973a2d0f05a15b774d03d2b58ff087845a92eddbd833`  
		Last Modified: Thu, 23 Jul 2026 22:30:31 GMT  
		Size: 180.1 MB (180060166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:498e449d476ae032ef4522b7807106104bb7e84c8e265b937acba123bc7d04c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61421013590006918ac3daf5a12cb704a4eae5d4e5f2e467c159f8378a4c2d9e`

```dockerfile
```

-	Layers:
	-	`sha256:742823686a265fff3f0fde0c7f5f5f1bada32bd7dd9ae33f07f794ee5da9bd79`  
		Last Modified: Thu, 23 Jul 2026 22:30:27 GMT  
		Size: 7.8 KB (7818 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cddd45dd152f5927685d5bfaab1f349fa8131756af07899f7ad980d2d2550a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181846495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4004ffe00f72ff89c26fd9cf66dca685785acdeceea202738d14441b4fa8845`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:31:21 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:21 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:21 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:31:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ace27f3789006b2abbedcd0b635cad279760ac28e9727c703f5e9a6ff2ce3ec`  
		Last Modified: Thu, 23 Jul 2026 22:31:39 GMT  
		Size: 177.7 MB (177664635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a3d4f278f825e16792f1e8084117dfdb3076ed595989a32ecfd5868c1b03e7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3280128c4f1cc84fe75c0a2c3daaf781732365c44bc86166915b80823c30e59e`

```dockerfile
```

-	Layers:
	-	`sha256:a889c129783246151aea3c4d7b7a4891557a813b5689d2ba080cadcb2e1fb73f`  
		Last Modified: Thu, 23 Jul 2026 22:31:34 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.in-toto+json
