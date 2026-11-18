## `azul-zulu:25-alpine3.23`

```console
$ docker pull azul-zulu@sha256:1fdfa521ec22a43b35115c4c928ed5903f0f47383dacc4d5de8bc56202651fe5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:629697953facd0e7e80aab94ff96d1368e587d4d1e12c5d721070b13c53f555c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (184045908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d937d2b0368fa40545dabe099362d22327568fad90e523e0f50962a394e17944`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:43:04 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:04 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cc1c726d595dab65bbd902a6ddbb528a4e29954863620b9fd0c867f997ce8e`  
		Last Modified: Wed, 18 Nov 2026 02:43:23 GMT  
		Size: 180.2 MB (180193319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:df5550c3a40a89146a3dbc0c77c724d3f3c09102a3b335663c9709cb258046e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dfc13ff96a141190209695a14fa60e9a3b2e30cd69454a6109d7aeaee19fd1`

```dockerfile
```

-	Layers:
	-	`sha256:53d94c29c6f05b67d1d0fcc2ff64caa105fca997b01fb61ad6cfcc9205e899bf`  
		Last Modified: Wed, 18 Nov 2026 02:43:16 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:977d483be3d92321165d13ac153544a9a2889b721b96c503ad8b712d1342f1c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181964959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa49e706a799b9b0ef6315bcc0ea0481994275f22022792ee61a97b2521dcd6a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:42:58 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c106504e980c7507b75b377d95dce2f09173286d2f6c0c1fd45ffc92c33ac9`  
		Last Modified: Wed, 18 Nov 2026 02:43:18 GMT  
		Size: 177.8 MB (177774738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d9c7fce9c7bfcaca65d9c6c166646cfe7404b77cdb1edc3c58043c8db00ebf38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6823ea2402f219269456dd7cda4068b901640217a7cda421028b2e8490b9168f`

```dockerfile
```

-	Layers:
	-	`sha256:ecb467a307ed22f311687a8ecf6c6149af3df3003e9781cafa30569ac15dbe28`  
		Last Modified: Wed, 18 Nov 2026 02:43:15 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
