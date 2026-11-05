## `azul-zulu:25-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a7dbeb868aa34e0a5e4debffa50ec9a15a5274072b5a1e92bfd30ac83b34ad6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:de7f59472ef50a493acfd7139a23851bcd5ca7cb66e3ed934914c67394d6a7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89854341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4854f97c840547c6549bf1e5444245012e63074a8277b51607c5a3cd7085d84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:13 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:16:13 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5078fa74a9ebd1bb413ddd4ab77460e0eff05fb9f39fcfa0a0030459dc3dcb1`  
		Last Modified: Thu, 05 Nov 2026 19:16:27 GMT  
		Size: 86.0 MB (86001752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f048221a73f61b95a9a704196d0fffc0c07c815e9aa29d15084fa80c1416fdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cbc3449d0f7a499d853064c06a58c89dfb103bd3c11f74a264df522596148e7`

```dockerfile
```

-	Layers:
	-	`sha256:484ff28e6847cda4d07ab5a54c235b594c150ffbcfa39b9186d9aba88f8c8907`  
		Last Modified: Thu, 05 Nov 2026 19:16:25 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2ccde7d267ce1d0cebe069b65359b266d5eded5b1ad997adc21274a51864f28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89019707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9b10efb34a436ec0eb497bc3b9a0609bb764d18914e40acf8eff222ec8109a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:09 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:09 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:12:09 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210ac5b1462aa977530a2646b2f80099c7b4c079dc4f8c25d7e61d116602b061`  
		Last Modified: Thu, 05 Nov 2026 19:12:23 GMT  
		Size: 84.8 MB (84829486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7420d1af808bdce1ff033b307f13a145adabdf57f9b0ce5f753e08894bed9973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0522356b754da7fcd72a899f421bbdc4c636e9a9c14e4ede962b68d96ceff4ee`

```dockerfile
```

-	Layers:
	-	`sha256:7c273585f63dc9d04803620987d7bd08cb81d9f9e80ba03ed44e72aeba7396f8`  
		Last Modified: Thu, 05 Nov 2026 19:12:21 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json
