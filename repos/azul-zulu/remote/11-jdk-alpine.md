## `azul-zulu:11-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:a95fe5750cc1f39c74218c873162585482e22fe475a6956fa4d2a2f79bfa2cd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2e9069d61a9b3f4868cfcfc56cc722326fb8e386e63ef6542b80e885ce7b0f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147047126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77d2bc3f22f1f3a8243444d525423742cf03f604543e988286e00a97a69d94d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:10 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:10 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a65a735ba678204b2a7d19e2c64b55e67cc32b86aa9c40e1a05bfadaf8a141b`  
		Last Modified: Wed, 18 Nov 2026 02:41:25 GMT  
		Size: 143.2 MB (143194537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3028b1806ffb3b96476af92327f85591c9a482ee4f2cb8e641b5cfc944fafac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf55d442ce6d77d376bd2527729b622da8663b57579bcfdbf257fca70c65caf1`

```dockerfile
```

-	Layers:
	-	`sha256:076b61258aa04df5509967d3d124ed284514b8fd6127d51d0afe1c40dd84a0f7`  
		Last Modified: Wed, 18 Nov 2026 02:41:21 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:16bdf476705875798386b7cb5767853ef520f9ef718ca0731337803f8e433153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145740310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5de551e4d38ef98c3e32e52b1fd5da382372a9d61edd90a8aa9814077cfd6ea`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:51 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:51 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:40:51 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:40:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95874704ba7a70d0b46d6280f226d77004e5f4837270dad2df91ce9a13c112e3`  
		Last Modified: Wed, 18 Nov 2026 02:41:06 GMT  
		Size: 141.6 MB (141550089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:80684c6c0fc3305efe71341ca06b261a4fec188ab0b950c032bb644bc1a66c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895460969da22674aa1a5f187a92b19b0a2d3fa15f54071ad4bda0b6e2044bef`

```dockerfile
```

-	Layers:
	-	`sha256:b9744a25b15c92fec25c29b162005fc1bfbf1835db339de03e145bdcd6c018db`  
		Last Modified: Wed, 18 Nov 2026 02:41:03 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
