## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:3e1c4a6d2b3f6acd1ec6cf358ead8249f36211c475f65eaf8863648b54bfa84d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2b59d0c232b59475abb6d0b87789896b262ff26f99cc41c32debe8e936e3fd9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45570220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8275e90da11ff0ee4b482936fd357480bd2cee42ecb6095408d2255bb7e48e03`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.514-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:53 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b30b3e98f8bd461ec1b5ebb70ab16d2ecfb670dbdc934d4568ba5294343dec9`  
		Last Modified: Wed, 18 Nov 2026 02:41:01 GMT  
		Size: 41.7 MB (41717631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c7d7a9406273a401854d6c8966aa6a8eebdc917bda1188e84acdfaa54962a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab5f1a3f951b273e4625fcf34347a1d1c96f371db44297376f3e949f0e7e795`

```dockerfile
```

-	Layers:
	-	`sha256:1f59b2408e02e6ca03cf122e909a1bb487bab83e50e8c2776e6ba64e32943fa1`  
		Last Modified: Wed, 18 Nov 2026 02:41:00 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:eafc4ee56c4546c1f573d8bb45dda51c920a2fdcc379daf03f6be7fa76c3e8a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45627808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151b4a175ee1ef3c96d2fe86857c304e8a3750ae56f24f8f3e33d2170525eb6b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:40:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.514-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:32 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a439aeefb3b7a4c3e7a1d3f41c790868c1afbb7d3def513ac09fda9db7b8f5f`  
		Last Modified: Wed, 18 Nov 2026 02:40:40 GMT  
		Size: 41.4 MB (41437587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:de0d0172612b8e4a375249f703f380b290578d812afe6977e1823c301aab3110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74a34ac308ba0efd8d398cabb22a11f8f60f0989aa5c04cf3d9f86d575c53bb`

```dockerfile
```

-	Layers:
	-	`sha256:d2659c4afb0408e863c1df5c314a840d44933bedde4eaa3e8ffbc61e78abeb94`  
		Last Modified: Wed, 18 Nov 2026 02:40:39 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
