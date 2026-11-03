## `azul-zulu:27-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:859d9843391444cac36972a881c47345c5d68512c2ac7afa528d218c87bba247
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a5fea53be0fe82092d8dc0daf3b2283a4edc886e26e9f4bf2cf16cef7b95f89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90639485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe5cd94b2789931e89933c840c2d4b2cbc7836e0688ced5143c2d71ab233e11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:31 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90688d4451e9071b3d981a15f0895544d0d90d1f494562c7f984ed8a41ad2dd7`  
		Last Modified: Tue, 03 Nov 2026 00:10:45 GMT  
		Size: 86.8 MB (86787258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:18f2f8f9ba200b9969c7475440c24b8655ca8de5ac7d548a960ec699ea12fbb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fabf6149cc8f2e3fbd73ecdfe3ea87d88c9371e4bbbd376d7482ee6c6a6fcadb`

```dockerfile
```

-	Layers:
	-	`sha256:6e4940fae1755acd7154f3d10b3020844b9c52e8738c0a30c383e4aa4305e9f3`  
		Last Modified: Tue, 03 Nov 2026 00:10:43 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:254a95a27e2d5dec7cbc8a542648fe81031e2533bf8fa55f25c96ba378b6f089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89819916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d743c1ca43abc41ab2c594420e8c3e39fff8e479cdb16d671940351139f99bda`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:46 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:46 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2feff2ca8b23ea9b274966147f9b3cb3580b5fa4902550404215a0472e3939`  
		Last Modified: Tue, 03 Nov 2026 00:11:00 GMT  
		Size: 85.6 MB (85630422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:81419c5e447a7e09ccdf44510c20d9c22e51f5c5082224940ed40f19e22b72cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a13afe76b489ba6e0c91e839013a52308932fa035b91f59e8ca2ce992f71d2a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee887a9e580d00e894bf6254d2b0ed206bfb2ffd565fbefb0476f3b7c9cb62c`  
		Last Modified: Tue, 03 Nov 2026 00:10:57 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json
