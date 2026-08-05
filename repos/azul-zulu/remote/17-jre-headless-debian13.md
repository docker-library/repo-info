## `azul-zulu:17-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:dffbc44d4bf4f1d0552c793189274b194bb47bf43de2b558ffd386c511eb3808
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0326e52c47b0e336d089bb8c6194cb0f8d50de9e8c98635cabc03ca89761f502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98824291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fc406047c2c41d7298d151144bf90c9a1a79e23fc05028871009adfc3d00be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:42:53 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:42:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:42:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016056ef051e5876add4cd279b1fa9dba8a142b79c1fe21cae573b3082de1684`  
		Last Modified: Wed, 05 Aug 2026 00:43:05 GMT  
		Size: 69.0 MB (69043526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:231f73675941c0652ea60ed43304b4dd75fb52af84cc08c3771c6b23e9820d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3547fdd94c54a729c29a13789f95be3dec708ea9543fdd3996f74052500ed8e5`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fe4eb2736a65fac2c678cda6fe803b1da967fb6857f6ea9651009f54b0879`  
		Last Modified: Wed, 05 Aug 2026 00:43:03 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d8755aa715e210faeda3cf0300dff80f1bff287224d61eba7a7e8f0c5695309a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99228461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d64cf58c9e934d9acc82e7de4bceaf05d85f6b05707b1598a0bc5a5d0421f75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:45:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:45:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba85af1c19aafd6e859b4eb5670715750f26625f0ec052f384c4fe71717e515`  
		Last Modified: Wed, 05 Aug 2026 00:45:44 GMT  
		Size: 69.1 MB (69084852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:223a326ecdb6eacaa78e38a991fc2a5322424487d6e8bf894759380c9e3a7a1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5faafea2ae2fc74406d1a176f7fa86a38c0e3d5bb612facb1f007a993169e5`

```dockerfile
```

-	Layers:
	-	`sha256:effb67708016a6a9f09ff3a48be7be05e8265ff534a44992db305ff0ff8a7a42`  
		Last Modified: Wed, 05 Aug 2026 00:45:42 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
