## `azul-zulu:11-headless-debian13`

```console
$ docker pull azul-zulu@sha256:822e21f726315d87528699cf24159eadd31913318c113967b716159071274bf5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:32b654e4ed53de53f6b588f838291894d8f539d281c652fd95f9cc61a98a3046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175187214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6c5a3daca3baa6210a6cc0e54258ee241230c4fc91178796e45cc7f2fb1030`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:50 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbcaf86bac08ef356b78f902dc864ef1dae4188ec81986d7ea2685e3f3a47d9`  
		Last Modified: Wed, 18 Nov 2026 02:42:04 GMT  
		Size: 145.3 MB (145331082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9bf531de178d9b2cf5f8dfc73a7dbc75cf89cc40bf1251cea71bf384d28b0a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283f8fafa5c5f70b79c8710e968db193d68e237eeb6d9aca3ccaa76b941606a8`

```dockerfile
```

-	Layers:
	-	`sha256:afa19a85420d4dd2c141a6f87fbd272d85e709c8e3d53f1c6d71bad3d24a4ec0`  
		Last Modified: Wed, 18 Nov 2026 02:42:01 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dff0b6cf488718cb5ad8807ec5062988e4cf10afb57371611dff8147672c17b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175225837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866258b37d543e8b0d59055e24473681200b6957802b708dc4eb28abe74771e9`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:39 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e193167ee2121eaf0f47bb1bce845d76dbf1801d21d7e2b3bad8e5d5b941d3`  
		Last Modified: Wed, 18 Nov 2026 02:41:54 GMT  
		Size: 145.0 MB (145011800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bb22cf46d3045bd4a45a9ce64cba7efc428080a38b306919e5966a312db65e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a17509aa40c2cddbc72b5390dca9161ca01c16067ba4d65dc81ed8e1058f23`

```dockerfile
```

-	Layers:
	-	`sha256:34299b37dfff8639a59ea68fa0fb544fb38ad43ae8bc181258631ad3fafd83f6`  
		Last Modified: Wed, 18 Nov 2026 02:41:51 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
