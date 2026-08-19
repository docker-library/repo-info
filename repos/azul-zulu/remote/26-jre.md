## `azul-zulu:26-jre`

```console
$ docker pull azul-zulu@sha256:fecbe4156d21f18d6de5b159dce9aee56c165e66ba1f540cfc8455cf015c1403
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:484f465a33f092904a02ab7da4d89f0161d07f8aff184264c0c86fd0df8e403e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121956812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33795378d4fbb6de3be6fa766eb949ba2b0475103be9f2f1405d6ccd3df0f228`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:56 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:56 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137b312e4733b2740afefb525fa666d4b7849e5407de4e972990b9530d94abad`  
		Last Modified: Wed, 19 Aug 2026 17:38:10 GMT  
		Size: 92.2 MB (92176047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d2d11400f52367b751908e5c1481889e80fba0641abd2fb32aa554e6b5379a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7f94413707bd6a65b67b6b8e54c180bbf537a97f53b63b261af9b0aaa7296d`

```dockerfile
```

-	Layers:
	-	`sha256:1e83c9089e1963e3d4932a668d0e15da05305067eb34ade663c8da609390c58c`  
		Last Modified: Wed, 19 Aug 2026 17:38:08 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:51abe672737f9f6496ce74389105b60235fc2d9f199882c3ee90c1a640b33561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122233668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979d17253117c031d47d37d87606d9c772e52a4f20f823477b16974568487854`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:38:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:38:14 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:38:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574292c0f23292ce59f4b7f850fff8e83f3374766d529005bf420605310cbb4e`  
		Last Modified: Wed, 19 Aug 2026 17:38:28 GMT  
		Size: 92.1 MB (92090059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4a6480841f4b01782de6b6c5ca29ea1da8af0365929a7f273383419632038da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2914cb4337d2037424ac9cc3d7bba2cb5214787c5d6f5c78f32510ba941b693c`

```dockerfile
```

-	Layers:
	-	`sha256:bb08e4f20088a4fb74ae034b2b41aaadbf8b04ddc9c3cb8cb691ce2befe5745d`  
		Last Modified: Wed, 19 Aug 2026 17:38:26 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
