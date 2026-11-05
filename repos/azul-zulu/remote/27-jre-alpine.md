## `azul-zulu:27-jre-alpine`

```console
$ docker pull azul-zulu@sha256:f685ea8bf0899177daaee3e753238fa0bf188a98b13c51fc739c1501550d3f03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e51fc72e4c9f9d39443371eabf3f1d0f05a600eedabff5d631774917e9691309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90639781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b456d508be469e675cd86ac7e847746f4ae69f6a9b8ce37dffae3563b42a2ad2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:16:52 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bfb7b4dabe0c3c2d34a4c0aeae3058c1c495cd6acc79b11576435c69adbdc1`  
		Last Modified: Thu, 05 Nov 2026 19:17:05 GMT  
		Size: 86.8 MB (86787192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b9056c3ba47ac97f986af838799c02d0eded0bd0cfd55f58dfbe265fdca77c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97e04d5d8f8fb7dcd73fa67accc300dd6f032d6eb863e2e4b1d9c8480351168`

```dockerfile
```

-	Layers:
	-	`sha256:c7b261761969dcc2a9bb910ff75256a976c83f08fc7330fa3943a36e7a6f77d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:03 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:af7a078e565b2df9c8aaf17f8be6c485b71538fef43f33341bbe76d22238da88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89820613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d340b1ce4fb8766bf4be10348a12904e93eb84899f09f428a2dd64f74979c4d6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:46 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:46 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:12:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda026602dbff57bf894350adfd48e95a2a40d55de3c93182290379045b9f113`  
		Last Modified: Thu, 05 Nov 2026 19:12:59 GMT  
		Size: 85.6 MB (85630392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c3caceda0daa0e9f9e346fca5ea67905c6cdd501163a8041531df5549df7e5e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412213468ed6b00ac143697cf15615f1a3df3e2199933c98154732d8a710376f`

```dockerfile
```

-	Layers:
	-	`sha256:f8c310f54706643f8a21054894739fda06fdc0318e0c95066e48271e6f3beaa1`  
		Last Modified: Thu, 05 Nov 2026 19:12:57 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json
