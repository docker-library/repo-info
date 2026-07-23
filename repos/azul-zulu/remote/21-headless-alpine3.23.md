## `azul-zulu:21-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:5339c26e57d99f9f89e28f9b21cc9cd76e203c9cb992f6aeb5532b69b0d6771c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f4e58bc753059ace26ea9154b6a5fb03bb7506633d51261c2517fabb4738ad38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161051884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6efe70d6b29cbb7bc0e0d569d4f302b3c5f44137e929bf2b675edd97973ce76`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:39 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:29:39 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9827aa5e89050aa75d2a04cb26ca92af5d56c8b5ac6bfe79750f81802116e2f2`  
		Last Modified: Thu, 23 Jul 2026 22:29:54 GMT  
		Size: 157.2 MB (157207463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:56ae63a0b06dd7c92dd782b45e40e4c2709e0d4516b5050eee89e6cf82b96d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3ab9bd9474ce4e330ae918d5f44c7c02d8ceae977e3fd37a82c6cd95964339`

```dockerfile
```

-	Layers:
	-	`sha256:0fb5fcf8bca804c56923b0ba1303e620123beb8e0beea33b83ed38a85fe27126`  
		Last Modified: Thu, 23 Jul 2026 22:29:51 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:08a5d145aa5b2a3a62a6345f765abab339f3ae3fe41c6406130f5dcf6ef3ff8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159593772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006434d6b07e3aa5ae10dda36f44ff6c7d445b462fefa0bd896b9cdd29e7f7ae`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.12-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:30:36 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06dd038f59792f3ee5c89996e78d37d39e1281c2eb7a64d7e59b925d438b595b`  
		Last Modified: Thu, 23 Jul 2026 22:30:53 GMT  
		Size: 155.4 MB (155411912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9b8c85f590343608b9dc77f3daac601f88d123dbc09c17b4e184b14f7c3ba8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc260f4381b885df7f5513298668fae6186536b30223235d5b4b23329b89edc4`

```dockerfile
```

-	Layers:
	-	`sha256:34c96db4cc6d5a6e9ae5c20eef1033320eaf045c415dbce430694b98724fa1f0`  
		Last Modified: Thu, 23 Jul 2026 22:30:49 GMT  
		Size: 7.7 KB (7672 bytes)  
		MIME: application/vnd.in-toto+json
