## `azul-zulu:21-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:e1523f9d06717edb499eded74a1c3dce3264b0932196ec0f642a8aa5a8a1416a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a0570b0f1634c944de269c3a702cac5b81fbebde6b061966bb207b5d09a24b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72405028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c11872c9eb99af931f7480598a3f8c923586a4dd377be57510b81b289c25d65`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:59 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.13.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 19:15:59 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e8eaa949e6a01326e7e74c27d568cbd3ada31d30ffc204f5bedf63dccbff2c`  
		Last Modified: Thu, 05 Nov 2026 19:16:11 GMT  
		Size: 68.6 MB (68552439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b806d3e038ec09df0fb68ee3b2aea0f0ca79d146597194e527d2d0965149a34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe138b71751af92b10bb56a42ef698bf5d9ccfcbb691b901b61941a17ba9514b`

```dockerfile
```

-	Layers:
	-	`sha256:f52b92e5450e546d9acd75804798e62d890fa98a49825ce2b712e21b6b06d10f`  
		Last Modified: Thu, 05 Nov 2026 19:16:09 GMT  
		Size: 7.6 KB (7596 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:332ac88988cc7c7c32ee2852e5b89db99509371ec5f02f2f2710bc076a27dee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71907390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5426468d3df74f6a7985d33a44776aaa80228dbcd5c51d8e2df9b5fbee32c9a1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:49 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.13.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 19:11:49 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e423986476083d7ab2c58c8a61f577311c201b4d89f22d0f5123e1d2b9f89925`  
		Last Modified: Thu, 05 Nov 2026 19:12:01 GMT  
		Size: 67.7 MB (67717169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3593fc8befc40c387cf6200911a19eb6b11db143e57f744e4b0eeef3ca407276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028abbc8ae1ecd129c6edfdf882e0326a43a528bf48890a1ba7213392904e300`

```dockerfile
```

-	Layers:
	-	`sha256:7155707b8ce7907752e8340b340602a3d9c233c1a54fbe520b2636b94ed546c4`  
		Last Modified: Thu, 05 Nov 2026 19:11:59 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.in-toto+json
