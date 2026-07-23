## `azul-zulu:8-jre-alpine`

```console
$ docker pull azul-zulu@sha256:1dbc454dd53d9d18f4b9f85de6af41ef2fd3e3ca68e1ec27f688e4483521dfba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:75045e241a4f8c9a431d09498e05ec5c937dde0a5e8f20c978d4f2fd43e7495a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47957518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5717a4c230ca8815dd667efacb444c76b7211d36607d1905346be4aa9f8acde`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:27:57 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:27:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:27:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:27:57 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f61eafafd9c882baa235a30d69d4d31115689b5671c0b0382b4777c15fe1bd0`  
		Last Modified: Thu, 23 Jul 2026 22:28:05 GMT  
		Size: 44.1 MB (44113097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e7ae110b2a8061142214d4296fbf5cad0fc3ad0157128229b588df1b42354445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091f00b4d0715e4e55d5e67d306f9393c8b4d1d0bcc25e98c546453116af2da4`

```dockerfile
```

-	Layers:
	-	`sha256:e47ea5a649314b269e589f7ea99f2df32a9c41b6acefcdf014aea2597ff6287d`  
		Last Modified: Thu, 23 Jul 2026 22:28:04 GMT  
		Size: 7.5 KB (7473 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1ad660486134b512fc52c752e99d1a37cb992d9def2a6f2bff11d97ee838fabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48045131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcf098fa3951a9e87cdd288bfb3994ee72d3cc7a4b8379949a2fa28909a46ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:48 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:48 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:48 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa6e9226ce2ae64b929dc53fd77348bdee086f4da5ba72460d570171b73d0e4`  
		Last Modified: Thu, 23 Jul 2026 22:28:56 GMT  
		Size: 43.9 MB (43863271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:19005647be826a491e23cd61acc5e03f1462e51cf5ef20c43a1b4ee9d4da5897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7a13d0cd5558df5efb73d7bf466f765c8e8b64e8564f6507af7c7aa03c7763`

```dockerfile
```

-	Layers:
	-	`sha256:1ff51e62ed0c99fc68706aea21b8923fa157319038993af30cf762da3836f248`  
		Last Modified: Thu, 23 Jul 2026 22:28:55 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json
