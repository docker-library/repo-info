## `azul-zulu:17-alpine3.23`

```console
$ docker pull azul-zulu@sha256:b74d5475471940ab383d780dd04dd12f9ec7c307793b3d2dcd5de24de462c8ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:700aaa54f7069ad5fef77a54801e2d221260c010f5ce8399333be3072d6a5d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151125092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abad1b3a7d8b70450452523b04857683a5579cea6ff35cfad3817fd8a1208e88`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 21:17:47 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:17:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2349db4c96b0b351f84d5e80cf05f33c64d606c111c09473e61f329711969a15`  
		Last Modified: Wed, 21 Oct 2026 21:18:00 GMT  
		Size: 147.3 MB (147272865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:07ab99182e612fe310c0a4f100fd5301bdbbb1a190d124dcb8262cd24f3c0402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b328fbd6b2be363da31a8c8ed6c3cac6e1a1d9113adfd36df6dc8958925d4245`

```dockerfile
```

-	Layers:
	-	`sha256:746fb78c4f90e1c8fd5690f315fa5261ad5d67ceea27470f0b31366eed18a6b5`  
		Last Modified: Wed, 21 Oct 2026 21:17:57 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f00fa79f78cda447984d0645c6aa57fa1a6234874445e8b25a0c4c0a38b455b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149914392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeac1b9f721a6108bd316fa7f6280bfda54475bbbc351113ac8a80c04760748`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:25 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:25 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 21:18:25 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08726d84d2fc342211d48b030f4f4eff7a9a6b3b68eb555c3a8de4eb134936a7`  
		Last Modified: Wed, 21 Oct 2026 21:18:41 GMT  
		Size: 145.7 MB (145724898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:adc07404742aa237bf1c3cc3d89463583d37372f8ee0a4208dc1eaa3d5e95e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24f3c5fdf65852a50cc0f89aa8d5cad766d0cd023a8ac2057a5b6052933f724`

```dockerfile
```

-	Layers:
	-	`sha256:66ca8f5c2ac8327397a305648c47b2f99164c2f4fbcce07143fbef5fc9ee9eef`  
		Last Modified: Wed, 21 Oct 2026 21:18:37 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.in-toto+json
