## `azul-zulu:26-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:408384af17ac2f3a777b53610fcf5f3d54ecfc7242543ca0065505e2c58b2505
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:13020d85746b2a9afaec7003c46afd96021f0b6524a5459108a96bdb50e802a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187949753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55a95eb71a62b324f1760b9eb08a51da6b1522b7892d1475c98694a3297b034`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:57 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:30:57 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e698c1e3cd267d4b2b6da421ef93caef8ac08ac0f726dd1c4ecb9a018ac8287`  
		Last Modified: Thu, 23 Jul 2026 22:31:15 GMT  
		Size: 184.1 MB (184105332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8afb3b26fb87926ad155a58e336d1d947be05c566bc9f3f92f2c18c3fca729e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a79a8cf14e544d792df3dce282e12ad3e9040aa85f6aec9b1bd7a8f13fd16fd`

```dockerfile
```

-	Layers:
	-	`sha256:3f5d5186d4828be7ab326385bc8e5ad2aaaefcc54f14b79d94fa6892049f9939`  
		Last Modified: Thu, 23 Jul 2026 22:31:11 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a6428273787aa68393137355f2deb6108faceccac4c463772373f7f1d81341cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185821836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7697bc093fdcfff7b578615da0cca30436ffaccb2531a06ce3679fa8a27ed678`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:32:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:07 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:07 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:32:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9104abfcb10c8587241b102ea01956f3a984f9cce5e4717fd9ad6999328b5156`  
		Last Modified: Thu, 23 Jul 2026 22:32:25 GMT  
		Size: 181.6 MB (181639976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c1c6fdd684d4b108d5ba5924392ebb86bcaa60a2dbc0fbbfbdaa4e084b263c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6f3814dfc4cd5deda005d93849ff447757c06e7f07fffcf85ecc4686df2a90`

```dockerfile
```

-	Layers:
	-	`sha256:f2bf048101ad59c1a78d267e92931a0857e426ace7af341297c8dc47293c0c81`  
		Last Modified: Thu, 23 Jul 2026 22:32:21 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.in-toto+json
