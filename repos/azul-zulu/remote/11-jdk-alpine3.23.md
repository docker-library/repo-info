## `azul-zulu:11-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:b3cd9a253b67a9ed057041a6f2eb847b3f80ce0b9862668736fbadbfb45019ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0e8487903bded41d138e785ef3f6ed714d82c118fd5353e182e5055c414308e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5d4733bfc85cc3eb6ceb6d7d356b35338855c44de1b60e23e79a2b9b6cd573`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:23 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:23 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:17:23 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:17:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4762bdce4f642f9353d2d1e19668d72830341c7cf77a55888575ed7ba6d3ea8`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 143.1 MB (143074997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b55fb6321777b4848fb57a85ad790e03ec68fe5044656ed6278562314814bae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d394eee4781a3935f931f2443b0cb6409949d9b00399dfb7c11921c06d2c12d`

```dockerfile
```

-	Layers:
	-	`sha256:7fc335b821d09f6128c0e1ec44ae1a7f704402fc811375b18b6b8e5e555e9ddb`  
		Last Modified: Wed, 21 Oct 2026 21:17:34 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0cc63f8431edcfe91a244fbc1c6a4b8d928ffdf450f6738d4cd216582825262e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145610958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9ee4eaa071537c7c90cc7e7334413bd48c37ac0f714577130229f1080b63cd`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:18:00 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab1b72afad12806ca2700a04568aa3bf61f6d4d13f410dff7cf58c595f0e6ac`  
		Last Modified: Wed, 21 Oct 2026 21:18:14 GMT  
		Size: 141.4 MB (141421464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:84b0ecfb62bd638f6d4e647a8fcca25c58fb28f8fbe84e138551109910631887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f8b7dc4ba3a2346d3e9995f6e6e040bcd70df516015743bbbd9a6e95562824`

```dockerfile
```

-	Layers:
	-	`sha256:b00c8353a0796c4d14932d9e2b51d692af4430226c26f1db6060ad50161a20eb`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
