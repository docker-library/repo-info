## `azul-zulu:11-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:0b924343ca6820b4332e90e7d9af4a10469276965befc0d31c57c19e23238017
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:576e2abf147d9a6f4554dbed7c686e525547b169b2d8e22adbb01f648cee73fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62669877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9737531d227e5654bd9d2c03e3a84ffbe6b212b051794ae7dcafcd27b62a4922`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:22:56 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:56 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:56 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38404ee97c062469069594dbc3f093600eb510a923987f224fd1ef10095580a7`  
		Last Modified: Mon, 09 Nov 2026 20:23:06 GMT  
		Size: 58.8 MB (58817288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aff09928591dbd36c9635da53fd66a67d6f58198592627d54983df3c48ca3bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebe444daec5018c2917b99ceba7f950254628c2013e9accf39047845f63d462`

```dockerfile
```

-	Layers:
	-	`sha256:a9f23fa16f792237976321561bba8e39706c1fe3dff37b4db3062d9f0a1feb15`  
		Last Modified: Mon, 09 Nov 2026 20:23:05 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:87884ea82521889d89842aa687f30ea5adb2501516f59f5393fbe26fbf25e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62184734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d558ea1d35ba5e0780b30c45e4daca32649f8dfd012eb5216d349b1e599088a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:24:58 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:58 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:24:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:24:58 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8852651b2b6ed2f2eb58917c9db33c58eed4b5cc0796b12e2feec33bf9375f`  
		Last Modified: Mon, 09 Nov 2026 20:25:09 GMT  
		Size: 58.0 MB (57994513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d44db815e0d25a9f8c706fe9f2bfab635112f99c601d5ed303abddd8fc43adf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1c4ad7e4a6105404a18327ac4c54f809a6cddd345229f1356cb0e119396c4b`

```dockerfile
```

-	Layers:
	-	`sha256:06d1ab9261a76370b16d78a0013fc88399959f213c8999540fd9f4de825f28a6`  
		Last Modified: Mon, 09 Nov 2026 20:25:08 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json
