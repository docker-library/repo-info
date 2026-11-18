## `azul-zulu:11-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:cac7531af79e6514cbb45a54e031343be31f31d8cb8c1cf454d72c88e27f4267
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:adee12ecc3b10bc6beb418f0400309fbf041410047b8cfaf8d490e5e0b0005b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62680927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46dd6b0b58871aa9eef9fb0cc1dd71960739f7fbb253662e81b45be7025114c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:17 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7e7bebeeb93e62ac39573cef69a8010f1180b73127ec809d70d2a889063bf7`  
		Last Modified: Wed, 18 Nov 2026 02:41:28 GMT  
		Size: 58.8 MB (58828338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ddc3527a9d8a798866076b20c1fee569bd22ea8502a8dae3bf65fd960702492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4f821177ba2337cb79162e7479239f76af013d8447b0d44ec56581fad01b48`

```dockerfile
```

-	Layers:
	-	`sha256:7a8e19bd585d8448c088c6c82fcf0f1bf02075418e9923d30e470692cbdbebbe`  
		Last Modified: Wed, 18 Nov 2026 02:41:26 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f1841125a3b1335579d2bfeed0910278ba8be28111fc5a6cf5fe6d85e8e3328d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62197777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138d71a40cabbbcc950e24ff958287350033ad3bb104652df31377468940c661`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:41:11 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:11 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:11 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26304b98287264640b7e6010d8196923e6f1ed511cb720cd0c09e41358ea0b8`  
		Last Modified: Wed, 18 Nov 2026 02:41:21 GMT  
		Size: 58.0 MB (58007556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0c1b32b1879ab0feb08b716bb2d992d8a82270ac7550abebf11e2058486bb1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bb8161fba661256e0ca1c18e63503db3489d86caa45baa54282affd4b044e9`

```dockerfile
```

-	Layers:
	-	`sha256:19bc02a64dbdf8c7141896a3ec8b0b36d0d28910a35f03cf37672b837ac8b0cd`  
		Last Modified: Wed, 18 Nov 2026 02:41:20 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
