## `azul-zulu:17-headless-alpine`

```console
$ docker pull azul-zulu@sha256:1551fef5d4c3fb45b3c13f57fbff0989210346b523bca1bb9f2b445a8262e629
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dfc8845a73a5a046f5953f0429067526a27ce4e7da37454b8bf2e58178d03386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148332304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1144dc12ca061465ff62695943754f16439dc6a5d8f2a21ea06a80fb9c0b89b2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:36 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:15:36 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6eb8003320f419f59f8c90da772122bc1938258c3b38b7906707e68b66aca2`  
		Last Modified: Thu, 05 Nov 2026 19:15:50 GMT  
		Size: 144.5 MB (144479715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c61f4ad2062c4c6ed5420a0c4a67cc52b0b471239af23308c83ea94d7c781462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2f78800b0dcc075d173d9e9a806e19ddfdbb16d343023401163ee0330ab5ca`

```dockerfile
```

-	Layers:
	-	`sha256:f83a29588a3423ba4402fadd571feace2adadaf31d90675993798f51fb9a38a8`  
		Last Modified: Thu, 05 Nov 2026 19:15:46 GMT  
		Size: 7.6 KB (7597 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:43ee15a0ebd1b6e7d4019a6157e5d0e207e51b50f3819236d843eed7af2c8250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147135856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ced873181304e80329dab51b2b27156e444d32e53761f6671f75e967e1590b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:25 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk-headless=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:11:25 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:11:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6bb6f0f37b148ff7062f76ac8b804beb02c222a5d9394a890cf86425eecc18`  
		Last Modified: Thu, 05 Nov 2026 19:11:40 GMT  
		Size: 142.9 MB (142945635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:781a57f7db029be5f893a736a147276dbd89a31683f08987939ffa6a3c9df0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1945259548d9cf9fcb287e1031f3e573f7dc49eace2bb4a136153236286030c`

```dockerfile
```

-	Layers:
	-	`sha256:37188a8dc7df361d1f3a3e9f510cc22e168d28316fee5341b6ff479bc785b840`  
		Last Modified: Thu, 05 Nov 2026 19:11:37 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.in-toto+json
