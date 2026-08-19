## `azul-zulu:8-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:ea771e7097095af33ef2572a7d4df9abc9dcbb26aff88d689c6efe023f2df690
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b83a72e463c5804501e8665891c2363e740a8767782c4448c47d7f2b5767db0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91276979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c406f0fad7c2798c662a4e9f66eb637cef0da5175d9c3c86c3346c84f3b49d45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:42 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6f2081d60cc192da49499d3bb3310242630a87a17fd5b2debd9036b4bc270f`  
		Last Modified: Wed, 19 Aug 2026 17:34:52 GMT  
		Size: 61.5 MB (61496214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:203101fdc9b7a4b6f27a10f2234a681a9b6f562f390f19af97d46a4f6024f239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820f0ca2708d32bd367f9763fb5d234e71a52a24aa4ff5f99e3408b74ed11dbb`

```dockerfile
```

-	Layers:
	-	`sha256:7f7d0dac57bee968d2b00c292e174de19de5f346bbc30a95dc191cd177d8d32f`  
		Last Modified: Wed, 19 Aug 2026 17:34:50 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e7fbbf8f043cdd0a74112d92401696fed30d93475d3b7655bda943d82f9ee407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91958087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f0895cfc5b715ca4a13234c0265b5635f60ba26ae18e887009dd2e6810ab91`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be85097fdbdfa8788759973a72ebcb3d4571d120a9118a7d7816d8c4578164d1`  
		Last Modified: Wed, 19 Aug 2026 17:34:44 GMT  
		Size: 61.8 MB (61814478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:580dc05220579b448c4f6819873240dff64e11574da432da45754ac655fb41f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5359a0724279ee03ec59993bde7c8f11a7efc84d50b54b9e4a2d28f7dbf46e6`

```dockerfile
```

-	Layers:
	-	`sha256:adb4741e37a6f81dbae22a56daad12ddebea0ae29e7543406f3caf5158a0201b`  
		Last Modified: Wed, 19 Aug 2026 17:34:42 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
