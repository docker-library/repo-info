## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:b79076fa1f31dfc2bc58d5671ce6c868b6f1f9f96deda62b8dc8b5e4d4f5685e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:813597057d3dea6bf573f980eccfc2003a7a5412aa63ff642e908a4334095375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88428975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e039cea4504d308a4f7bbbdee14575ecc1dd7a1c1bd01c1a3d47acadcfc9ad42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:23 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:40:23 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:40:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:40:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595f6047234bc2051c663cce6995fbdf672606b16a364530fb67527a1eed0716`  
		Last Modified: Sat, 19 Sep 2026 00:40:32 GMT  
		Size: 58.6 MB (58598557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cfa201d91b2d66b68a67235b73e9791a396425205ab717d5c264ef63003050e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6bd21cde1bc1e2821f1649438c1d30b68feda04df50a1261d9bd7bbbb1c23b`

```dockerfile
```

-	Layers:
	-	`sha256:444ffb4535c4a183553cb77201e3350bf0c08f2df31a184204f9303404c0642f`  
		Last Modified: Sat, 19 Sep 2026 00:40:30 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7564cca4621d4989e2385536e713869a0e7ad6eb7dc23fc8c376efe963ada1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89115154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc66ce25a77678be4d430ab567a3349462f6ae86fae7d1c7478e2a4af9c8bce3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:15 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:15 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9550486f3ebd4b24bcd495c56d0483daa7bc9d2b35dc6831d01b97a485345b`  
		Last Modified: Sat, 19 Sep 2026 00:43:24 GMT  
		Size: 58.9 MB (58925463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e572b72095ec20ecc641e161193066e5bbb64be522c0b52f0fb1bc3ff2b3b952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0726345a543f48628a96da45e7792bf29856f3d254d59b6b84b75139024bec8e`

```dockerfile
```

-	Layers:
	-	`sha256:37e2baa98e7a53562939f77f05609e99e31871e453b4b94aec74b91130a3e7be`  
		Last Modified: Sat, 19 Sep 2026 00:43:22 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
