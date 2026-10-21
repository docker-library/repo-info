## `azul-zulu:26-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:dd8c843f1fafa7b95653a2e00b4029995ab27065f2b9acf631a319ae13e4bab4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fd0409267bfe190477ef07003f313dd3ba30355630a98da5d298bb5cc7268c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88767155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472f2432d32e0c4bb20e3764c81055e476bd059a224d0d560861711f0644527d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:18:52 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7f02805ca805e846665055d37fceaa1ef756b6d0580ea9f6ad776557970566`  
		Last Modified: Wed, 21 Oct 2026 21:19:05 GMT  
		Size: 84.9 MB (84914928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d4340cce4336dab80f9c7990508b3f2733869cd1ae7b098d9da96e5e26b7b0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0014d8a39f246eaa5eee6e2dd711bfdd337dc473c7717dfb60d892d15408b7da`

```dockerfile
```

-	Layers:
	-	`sha256:89765b5bc8ccf08bdfb6b563685164ea483d0432c03bb26e79f9b145c38c36a1`  
		Last Modified: Wed, 21 Oct 2026 21:19:02 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0591b826f32c528be0756e78fd6dab3688a4a3e34162c820804eb17ab474dca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87896064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab0f6fe038dbe1f09a87f5706bc5470435ec42c89bff1247b5bdd39f6c05ed6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:31 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:19:31 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a863535a7764f8f9e68e6aece060de9e91ed9cddb6175b0258e8e55e51faf04`  
		Last Modified: Wed, 21 Oct 2026 21:19:45 GMT  
		Size: 83.7 MB (83706570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a3c0c3f1e9b9c9673e3e027a1fdefffeb90575ca713521408ff2091712b51292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f799d2a8ccca0d70ad0c946c202705b861d17404084c92b684299d36ff52b7`

```dockerfile
```

-	Layers:
	-	`sha256:34a51f3d0787b9258cc60e842cebf9b473115ebf0c3faeedc84d2594d59d6ffd`  
		Last Modified: Wed, 21 Oct 2026 21:19:42 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
