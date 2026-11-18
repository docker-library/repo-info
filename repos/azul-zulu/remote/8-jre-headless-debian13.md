## `azul-zulu:8-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:a509cf4c7f1df6683242bbe4739327ad153d6463daf3ce85b47a773afa80080f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:90d1d2e37ad5cae1e9e80d04cbfe2a42206392f538a9f943ee2d40d99b4504d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77054036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e17a6f119b3ff136f199db6734dd7a971774f2568f453cacd77158045479f8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:40:57 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7ebe8ed9703e9a12787c653e56f8cfc0c903afcb891764cd0a35fef41da4f8`  
		Last Modified: Wed, 18 Nov 2026 02:41:06 GMT  
		Size: 47.2 MB (47197904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ba784bc81551eef6acb78641e7dc99e1110d999e50dc186cdbf136764d8276ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d98cffe6596726c7b4a5ef54867b846058765840f62c025610fb0bf595eb34`

```dockerfile
```

-	Layers:
	-	`sha256:c073506679572a524f983cfe28a8a6caa4a28d04c2400349a9722de3af86cb19`  
		Last Modified: Wed, 18 Nov 2026 02:41:05 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0668329a1e7b5828b2f07f0ac6f78431228e98463089dc49e58474749cc4e4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77652282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cf7735c82159389517adbedee2b7794eadb9bbbd9ce1f5ff7a422c72ef089e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:40:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:54 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:40:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53d1afa31bb01ed3980dffdc3fa254718be496cd33a0e5bb426bf275c0263e4`  
		Last Modified: Wed, 18 Nov 2026 02:41:03 GMT  
		Size: 47.4 MB (47438245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8c8a389d3e0f5e4d7fc55928a4a3085aa3f7fd5ccf380d9c243386fd243d36be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd0f170c0c3917cdd1e8aed03038514126e639124f42f9bffe0437022a50293`

```dockerfile
```

-	Layers:
	-	`sha256:d3dac741f3e92434e78190ce5b6dcf549b57512ef5ba9cae88d5384261787247`  
		Last Modified: Wed, 18 Nov 2026 02:41:01 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json
