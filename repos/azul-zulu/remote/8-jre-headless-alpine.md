## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:17144ff4e418826a5850297ef4e192786fccfcb7be97be5dbea4b2bcdba24d1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7e2a7b6eac563209ead9f67797e4f093b3733466dd04f105c571d28ca4126e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45554385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dd0b9dfa006ab02168ef2a52354d4f5dca733bbc2c64ecb20d03deb56fae6d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:20:04 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:20:04 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:20:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:20:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:20:04 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231b6cc05b2b10a1adef319718819587b0d33a42d733ecb787064a72d28c7847`  
		Last Modified: Mon, 09 Nov 2026 20:20:12 GMT  
		Size: 41.7 MB (41701796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:856ca646978cc40b557b94098add3b4aed6de1c8e7d7aea481f83a5500e79c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362a1fa72aba4a0923f6da7a2d44a214e16baac3edae1749de6b53240ebaed1a`

```dockerfile
```

-	Layers:
	-	`sha256:69dc6194d9373a7b6de534aff88613ba3e65cb835cb428a909a60451b2b7fb2d`  
		Last Modified: Mon, 09 Nov 2026 20:20:11 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dfa94c2b7d784070e0ffdd671d117368f2bb48f2048662da674357ba883b3c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45616694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c045d6cddd25071950b7470d65424c0e0d38ffcffc561f9c9d8d5e7443b161`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:21:28 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:21:28 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:21:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.512-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:21:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:21:28 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03c96b712875cc9ce749c93505b535d61e0cde0eb8d322388c9e1935a80bb05`  
		Last Modified: Mon, 09 Nov 2026 20:21:37 GMT  
		Size: 41.4 MB (41426473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:91df739316ea1a476bfede42333c645979a0282f3910bf55bd848868f9a11782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711207a5d2304d413c10b7267786cf3714829ce595f274d60ed2aa540ddbac66`

```dockerfile
```

-	Layers:
	-	`sha256:904a6653e888b48d9de88f974bf83b9eecfc3f53e042fcd036cf143ac1a7b5a8`  
		Last Modified: Mon, 09 Nov 2026 20:21:36 GMT  
		Size: 7.7 KB (7659 bytes)  
		MIME: application/vnd.in-toto+json
