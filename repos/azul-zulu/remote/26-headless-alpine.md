## `azul-zulu:26-headless-alpine`

```console
$ docker pull azul-zulu@sha256:e1484ec3a710ea9af6be8fa1d45bfabd63b025c47282a55a5e83f51471e298bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9105854b4b52652d9432ce1146b951718a30be084fae465c08f24edf5558bfa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184959960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cae259541477fac937758fd0e2398767cffac50903f4d2236258e4c615482b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf34040b19bffa7f38702d6b15fcb404b66c0481b2095cd8628bbfd89d748b3`  
		Last Modified: Wed, 19 Aug 2026 17:37:32 GMT  
		Size: 181.1 MB (181115539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fa40ea061f090a18249c5085db216dd0241b701e8a3604e93648ec028660e3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03135aff357f5ad844d96b8affb1eb23c214cb61c738b5cbd98ec420b9a66275`

```dockerfile
```

-	Layers:
	-	`sha256:ffeed2d75680c3fdf23c0c786f26bcd7b86a943a3ef70579af0a705490c98e53`  
		Last Modified: Wed, 19 Aug 2026 17:37:29 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1caa8759a7842dcd0e4291debca347261bdcb4dacdcbd79f091cd5e703363ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182801465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103781ebc775f8ad11f37a53b753dbd19568806b7f536dae3ae979cc0ef2f192`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:28 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fc6e2d4c502c1e4af500d72ba578e01631dbd7cae5b979b41bf58ab11a3190`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 178.6 MB (178619605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7469622a93b793e8a4432de7a8fa546b30cce31d8953af68282528525aa78d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77ba5e861d3ef34c1cbfddcb280eb38ca8a57a712d936f2b2cfe513c2eebc5ef`

```dockerfile
```

-	Layers:
	-	`sha256:425cb7a0ff4180da111ec722185ba4efbe4e6788fb175770333472dfd18885be`  
		Last Modified: Wed, 19 Aug 2026 17:37:44 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
